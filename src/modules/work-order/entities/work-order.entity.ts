import { Column, Entity, JoinColumn, ManyToOne, OneToMany } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { DeviceBase } from '~/modules/device/entities/device_base.entity'
import { WorkOrderRecordEntity } from './work-order-record.entity'

@Entity({ name: 'work_order' })
export class WorkOrderEntity extends CommonEntity {
  @Column({
    type: 'varchar',
    length: 24,
    comment: '工单ID',
  })
  orderId: string

  @ManyToOne(() => DeviceBase, device => device.id)
  @JoinColumn({ name: 'device_id' })
  device: DeviceBase

  @Column({
    type: 'tinyint',
    nullable: true,
    comment: '故障等级(1-5)',
  })
  faultLevel: number

  @Column({
    type: 'varchar',
    length: 100,
    nullable: true,
    comment: '故障地点',
  })
  faultLocation: string

  @Column({
    type: 'varchar',
    length: 50,
    nullable: true,
    comment: '故障类型',
  })
  faultType: string

  @Column({
    type: 'text',
    nullable: true,
    comment: '故障描述',
  })
  faultDesc: string

  @Column({
    type: 'tinyint',
    default: 0,
    comment: '状态(0:待处理 1:处理中 2:待审核 3:已通过 4:已驳回)',
  })
  orderStatus: number

  @OneToMany(() => WorkOrderRecordEntity, record => record.workOrder)
  records: WorkOrderRecordEntity[]
}
