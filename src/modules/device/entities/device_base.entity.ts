import { ApiProperty } from '@nestjs/swagger'
import { Column, Entity, JoinColumn, ManyToOne, OneToMany } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { Area } from '~/modules/area/entities/area.entity'
import { PressureMeterMetric } from './pressure_meter_metric.entity'
import { WaterMeterMetric } from './water_meter_metric.entity'

// 设备基础表(不包含数据指标)
@Entity({ name: 'device_base' })
export class DeviceBase extends CommonEntity {
  // 设备编码
  @Column({ unique: true })
  deviceCode: string

  // 设备类型water_meter/pressure_meter
  @Column({ type: 'tinyint', default: 1, comment: '设备类型' })

  deviceType: number // 1:水表 2:压力表 3:其他

  // 安装区域
  @ManyToOne(() => Area, area => area.devices)
  @JoinColumn({ name: 'area_id' })
  installArea: Area

  // 生产厂家
  @Column({ type: 'varchar', comment: '生产厂家' })
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

  // 添加设备通用属性
  @Column({ type: 'varchar', length: 50, nullable: true, comment: '设备型号' })
  model: string

  @Column({ type: 'varchar', length: 100, nullable: true, comment: '网关ID' })
  gatewayId: string

  // 关联水表
  @OneToMany(() => WaterMeterMetric, metric => metric.device)
  waterMetrics: WaterMeterMetric[]

  // 关联压力表
  @OneToMany(() => PressureMeterMetric, metric => metric.device)
  pressureMetrics: PressureMeterMetric[]
}

// 设备一张表,然后设备产生的数据是另外一张表,然后这张表把公共的属性给它抽出来，然后使用这个TableInheritance继承多个不同的设备数据表出来
