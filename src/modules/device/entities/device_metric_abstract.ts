import { Column, PrimaryGeneratedColumn, TableInheritance } from 'typeorm'

// 设备指标数据表 公共
@TableInheritance({ column: { type: 'varchar', name: 'type' } })
export abstract class DeviceMetric {
  @PrimaryGeneratedColumn()
  id: number

  // 上传时间
  @Column({ type: 'timestamp', default: () => 'CURRENT_TIMESTAMP' })
  uploadTime: Date
}
