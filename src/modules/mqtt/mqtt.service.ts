import { Injectable, Logger, OnModuleInit } from '@nestjs/common'

import { connect, MqttClient } from 'mqtt'
import { IMqttConfig } from '~/config'

@Injectable()
export class MQTT_SUB_Service implements OnModuleInit {
  private readonly logger = new Logger(MQTT_SUB_Service.name)
  private client: MqttClient
  constructor(
    private mqttConifg: IMqttConfig,
  ) { }

  async onModuleInit() {
    this.connectToBroker()
  }

  // 2. 连接建立
  private connectToBroker() {
    // this.client = connect('mqtt://broker.emqx.io', {
    //   clientId: `nest-admin-${process.pid}`, // 是客户端唯一标识，使用进程ID确保唯一性
    //   clean: true, // 表示建立新的会话
    //   connectTimeout: 4000, // 连接超时时间(4秒)
    //   reconnectPeriod: 1000, // 重连间隔(1秒)
    // })
    this.client = connect(this.mqttConifg.host, {
      username: this.mqttConifg.username,
      password: this.mqttConifg.password,
      clientId: this.mqttConifg.clientId, // 是客户端唯一标识，使用进程ID确保唯一性
      clean: this.mqttConifg.clean, // 表示建立新的会话
      connectTimeout: this.mqttConifg.connectTimeout, // 连接超时时间(4秒)

    })

    // . 事件监听
    this.client.on('connect', () => {
      this.logger.log('Connected to MQTT broker')
      this.subscribeTopics()
    })

    this.client.on('error', (error) => {
      this.logger.error('Connection error:', error)
    })

    this.client.on('reconnect', () => {
      this.logger.warn('Reconnecting to MQTT broker...')
    })
  }

  // 主题订阅
  private subscribeTopics() {
    // 接收设备数据( + 是通配符)
    this.client.subscribe(this.mqttConifg.topics.data, { qos: 1 }, (err) => {
      if (err) {
        this.logger.error('Subscription error:', err)
      }
    })

    // 订阅状态主题
    this.client.subscribe(this.mqttConifg.topics.status, { qos: 1 })
  }

  // 向指定主题发布消息
  public publish(topic: string, payload: string | Buffer, options?: any) {
    return this.client.publish(topic, payload, options)
  }

  // 设置消息到达时的回调函数
  public onMessage(callback: (topic: string, message: string) => void) {
    this.client.on('message', (topic, message) => {
      callback(topic, message.toString())
    })
  }

  // 优雅关闭MQTT连接
  public async end() {
    return new Promise<void>((resolve) => {
      this.client.end(false, {}, () => {
        this.logger.log('MQTT connection closed')
        resolve()
      })
    })
  }
}
