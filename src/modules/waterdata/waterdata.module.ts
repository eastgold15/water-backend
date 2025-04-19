import { Module } from '@nestjs/common'

import { TypeOrmModule } from '@nestjs/typeorm'
import { DeviceModule } from '../device/device.module'
import { WaterMeterMetric } from '../device/entities/water_meter_metric.entity'
import { WaterdataController } from './waterdata.controller'
import { WaterdataService } from './waterdata.service'

@Module({
  imports: [DeviceModule, TypeOrmModule.forFeature([WaterMeterMetric])],
  controllers: [WaterdataController],
  providers: [WaterdataService],
})
export class WaterdataModule { }
