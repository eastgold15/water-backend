import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { DeviceController } from './device.controller'
import { DeviceService } from './device.service'
import { DeviceBase } from './entities/device.entity'
import { DeviceMetric } from './entities/device_metric'

@Module({
  imports: [
    TypeOrmModule.forFeature([DeviceBase, DeviceMetric]),
  ],
  controllers: [DeviceController],
  providers: [DeviceService],
})
export class DeviceModule { }
