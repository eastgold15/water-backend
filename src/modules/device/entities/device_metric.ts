import { Column, Entity, Index, JoinColumn, ManyToOne } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { DeviceBase } from './device.entity'

// 设备指标数据表
@Entity({ name: 'device_metric' })
export class DeviceMetric extends CommonEntity {
  @ManyToOne(() => DeviceBase, device => device.metrics)
  @JoinColumn({ name: 'device_id' })
  device: DeviceBase

  @Column({
    type: 'varchar',
    length: 20,
    comment: '指标类型(flow:流量/pressure:压力)',
  })
  metricType: string

  @Column({
    type: 'decimal',
    precision: 12,
    scale: 4,
    comment: '指标值',
  })
  metricValue: number

  @Index('idx_collect_time')
  @Column({
    type: 'datetime',
    comment: '采集时间',
  })
  collectTime: Date
}
