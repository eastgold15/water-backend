import { Column, Entity, JoinColumn, ManyToOne } from 'typeorm'
import { DeviceBase } from './device_base.entity'
import { DeviceMetric } from './device_metric_abstract'

@Entity({ name: 'pressure_meter' })
export class PressureMeterMetric extends DeviceMetric {
  @ManyToOne(() => DeviceBase, device => device.pressureMetrics)
  @JoinColumn({ name: 'device_base_id' })
  device: DeviceBase

  @Column({ type: 'varchar', length: 50, comment: '压力值' })
  pressure: string

  @Column({ type: 'decimal', precision: 10, scale: 6, comment: '经度' })
  longitude: number

  @Column({ type: 'decimal', precision: 10, scale: 6, comment: '纬度' })
  latitude: number

  @Column({ type: 'varchar', length: 50, nullable: true, comment: '设备口径' })
  caliber: string
}
