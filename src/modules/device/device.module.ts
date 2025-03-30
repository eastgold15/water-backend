import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { MqttModule } from '../mqtt/mqtt.module'
import { DeviceController } from './device.controller'
import { DeviceService } from './device.service'

import { DeviceBase } from './entities/device_base.entity'

import { PressureMeterMetric } from './entities/pressure_meter_metric.entity'
import { WaterMeterMetric } from './entities/water_meter_metric.entity'
import { DeviceMockController } from './mock/mock.controller'
import { DeviceMockService } from './mock/mock.service'

const provide = [DeviceService, DeviceMockService]
@Module({
  imports: [
    TypeOrmModule.forFeature([DeviceBase, WaterMeterMetric, PressureMeterMetric]),
    MqttModule,
    MqttModule,
  ],
  controllers: [DeviceController, DeviceMockController],
  providers: [...provide],
})
export class DeviceModule { }
