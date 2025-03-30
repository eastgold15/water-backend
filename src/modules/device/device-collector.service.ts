// // 数据采集服务实现
// import { Injectable, OnModuleInit } from '@nestjs/common'
// import { InjectRepository } from '@nestjs/typeorm'
// import { Repository } from 'typeorm'

// import { MQTT_SUB_Service } from '../mqtt/mqtt.service'
// import { CollectorDto } from './dto/collector.dto'

// @Injectable()
// export class DeviceCollectorService implements OnModuleInit {
//   constructor(
//     @InjectRepository(DeviceMetric)
//     private metricRepo: Repository<DeviceMetric>,
//     private readonly mqttService: MQTT_SUB_Service,
//   ) { }

//   onModuleInit() {
//     // 启动数据采集
//     this.mqttService.onMessage((topic, message) => {
//       this.handleDeviceMessage(topic, message)
//     })
//   }

//   //
//   private handleDeviceMessage(topic: string, message: string) {
//     const [_, deviceId, type] = topic.split('/')
//     console.log(`Received ${type} data from device ${deviceId}:`, message)
//     // 这里添加您的业务逻辑处理
//     // 例如保存到数据库、触发事件等
//     // 解析消息并保存到数据库
//     const data = JSON.parse(message)
//     this.saveDeviceData(data)
//   }

//   async saveDeviceData(data: CollectorDto) {
//     const entity = this.metricRepo.create(data)
//     return this.metricRepo.save(entity)
//   }
// }
