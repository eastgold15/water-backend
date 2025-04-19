import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Between, Repository } from 'typeorm'

import { WaterMeterMetric } from '../device/entities/water_meter_metric.entity'
import { CreateWaterdatumDto } from './dto/create-waterdatum.dto'
import { UpdateWaterdatumDto } from './dto/update-waterdatum.dto'

@Injectable()
export class WaterdataService {
  constructor(
    @InjectRepository(WaterMeterMetric)
    private readonly waterMeterRepo: Repository<WaterMeterMetric>,
  ) { }

  async getWaterVolume(date: Date, type: 'day' | 'month' | 'year') {
    const start = new Date(date)
    const end = new Date(date)
    if (type === 'day') {
      start.setHours(0, 0, 0, 0)
      end.setHours(23, 59, 59, 999)
    }
    else if (type === 'month') {
      start.setDate(1)
      start.setHours(0, 0, 0, 0)
      end.setMonth(end.getMonth() + 1)
      end.setDate(0)
      end.setHours(23, 59, 59, 999)
    }
    else { // year
      start.setMonth(0, 1)
      start.setHours(0, 0, 0, 0)
      end.setMonth(11, 31)
      end.setHours(23, 59, 59, 999)
    }

    // 获取该时间段内最早和最晚的记录
    const [first, last] = await Promise.all([
      this.waterMeterRepo.findOne({
        where: { uploadTime: Between(start, end) },
        select: ['totalFlow'],
        order: { uploadTime: 'ASC' },
      }),
      this.waterMeterRepo.findOne({
        where: { uploadTime: Between(start, end) },
        select: ['totalFlow'],
        order: { uploadTime: 'DESC' },
      }),
    ])

    if (!first || !last)
      return 0

    // 水量 = 最新累计值 - 最早累计值
    return (Number.parseInt(last.totalFlow) - Number.parseInt(first.totalFlow))
  }

  create(createWaterdatumDto: CreateWaterdatumDto) {
    return 'This action adds a new waterdatum'
  }

  findAll() {
    return `This action returns all waterdata`
  }

  findOne(id: number) {
    return `This action returns a #${id} waterdatum`
  }

  update(id: number, updateWaterdatumDto: UpdateWaterdatumDto) {
    return `This action updates a #${id} waterdatum`
  }
}
