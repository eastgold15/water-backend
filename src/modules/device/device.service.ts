import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { PagerDto } from '~/common/dto/pager.dto'
import { paginate } from '~/helper/paginate'
import { CreateDeviceBaseDto } from './dto/create-device.dto'
import { findDevicePageDto, UpdateDeviceBaseDto } from './dto/update-device.dto'
import { DeviceBase } from './entities/device_base.entity'

@Injectable()
export class DeviceService {
  constructor(
    @InjectRepository(DeviceBase)
    private deviceRepo: Repository<DeviceBase>,

  ) { }

  // 创建设备
  async createDevie(createDeviceBase: CreateDeviceBaseDto) {
    const device = await this.deviceRepo.save(createDeviceBase)
    return {
      deviceType: device.deviceType,
    }
  }

  // 查找所有设备（分页查询默认）
  async findAll({ page, pageSize }: PagerDto) {
    return await paginate(this.deviceRepo, { page, pageSize }, {
      order: { id: 'DESC' }, // 按ID倒序
    })
  }

  // 查找设备能根据某些字段
  // 查找设备及其指标数据
  async find(dto: findDevicePageDto, isData: boolean) {
    if (isData) {
      // 1.带指标数据
      const queryBuilder = this.deviceRepo.createQueryBuilder('device')
        .leftJoinAndSelect('device.waterMetrics', 'waterMetrics') // 关联水表指标数据
        .leftJoinAndSelect('device.pressureMetrics', 'pressureMetrics') // 关联压力表指标数据
        .where({
          ...(dto.status ? { status: dto.status } : null), // 根据状态筛选
          ...(dto.deviceType ? { deviceType: dto.deviceType } : null), // 根据设备类型筛选
        })
        .orderBy('device.id', 'DESC') // 按ID倒序

      return await paginate(queryBuilder, { page: dto.page, pageSize: dto.pageSize }) // 分页查询并返回结果集
    }

    // 2.不带指标数据
    // 构建查询条件
    const query = this.deviceRepo.createQueryBuilder('device')
      .where({
        ...(dto.status ? { status: dto.status } : null), // 根据状态筛选
        ...(dto.deviceType ? { deviceType: dto.deviceType } : null), // 根据设备类型筛选
      })
      .orderBy('device.id', 'DESC') // 按ID倒序

    // 分页查询
    return await paginate(query, { page: dto.page, pageSize: dto.pageSize })
  }

  async update(id: number, updateDeviceDto: UpdateDeviceBaseDto) {
    // 1.更新设备基本信息
    return await this.deviceRepo.update(id, updateDeviceDto)
  }

  // 删除设备及其关联的指标数据
  async remove(id: number) {
    return await this.deviceRepo.delete(id)
  }
}
