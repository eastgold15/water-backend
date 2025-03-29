import { ApiProperty } from '@nestjs/swagger'
import { Column, Entity, JoinColumn, ManyToOne, OneToMany } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { Area } from '~/modules/area/entities/area.entity'
import { DeviceMetric } from './device_metric'
// 设备基础表
@Entity({ name: 'device_base' })
export class DeviceBase extends CommonEntity {
  // 设备唯一码
  @Column({ unique: true })
  deviceCode: string

  // 设备类型water_meter/pressure_meter
  @Column({ default: 'water_meter' })
  deviceType: string

  // 所属区域
  @ManyToOne(() => Area, area => area.devices)
  @JoinColumn({ name: 'area_id' })
  area: Area

  // 生产厂家
  manufacturer: string

  // 设备状态
  @Column({
    type: 'tinyint',
    default: 1,
    comment: '设备状态(1:正常 2:预警 3:故障)',
  })
  @ApiProperty({
    description: '设备状态(1:正常 2:预警 3:故障)',
    enum: [1, 2, 3],
    enumName: 'DeviceStatusEnum',
  })
  status: number

  // 数据指标
  @OneToMany(() => DeviceMetric, metric => metric.device)
  metrics: DeviceMetric[]
}
