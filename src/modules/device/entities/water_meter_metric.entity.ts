import { Column, Entity, JoinColumn, ManyToOne } from 'typeorm'
import { DeviceBase } from './device_base.entity'
import { DeviceMetric } from './device_metric_abstract'

@Entity({ name: 'water_meter' })
export class WaterMeterMetric extends DeviceMetric {
  @ManyToOne(() => DeviceBase, device => device.waterMetrics)
  @JoinColumn({ name: 'device_base_id' })
  device: DeviceBase

  @Column({ type: 'varchar', length: 50, comment: '瞬时流量' })
  flowRate: string

  @Column({ type: 'varchar', length: 50, comment: '累计流量' })
  totalFlow: string

  @Column({ type: 'varchar', length: 50, comment: '信号强度' })
  signalStrength: string
}
