import { Module } from '@nestjs/common'
import { ConfigModule, ConfigService } from '@nestjs/config'
import { ConfigKeyPaths } from '~/config'
import { IMqttConfig } from '../../config/mqtt.config'

import { MQTT_SUB_Service } from './mqtt.service'

const provide = [MQTT_SUB_Service]
@Module({
  imports: [ConfigModule],
  providers: [...provide, {
    provide: MQTT_SUB_Service, // 确保提供的名称与 MqttService 中的 inject 一致
    useFactory: (configService: ConfigService<ConfigKeyPaths>) => {
      const mqttConifg = configService.get<IMqttConfig>('mqtt')
      return new MQTT_SUB_Service(mqttConifg)
    },
    inject: [ConfigService], // 确保 ConfigService 被正确注入
  }], // 确保 MqttService 被正确导出
  exports: [MQTT_SUB_Service], // 导出 MqttService
})
export class MqttModule { }
