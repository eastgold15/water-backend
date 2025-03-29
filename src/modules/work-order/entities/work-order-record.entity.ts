import { Column, Entity, JoinColumn, ManyToOne } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { UserEntity } from '~/modules/user/user.entity'
import { WorkOrderEntity } from './work-order.entity'

@Entity({ name: 'work_order_records' })
export class WorkOrderRecordEntity extends CommonEntity {
  @Column({
    type: 'enum',
    enum: ['report', 'process', 'complete', 'reject', 'approve'],
    comment: '记录类型(report:上报 process:处理中 complete:完成 reject:驳回 approve:审核通过)',
  })
  type: string

  @Column({ type: 'json', nullable: true, comment: '图片URL数组' })
  images: string[]

  @Column({ type: 'varchar', length: 255, nullable: true, comment: '维修地点' })
  location: string

  @Column({ type: 'text', nullable: true, comment: '维修描述' })
  description: string

  @Column({ type: 'datetime', nullable: true, comment: '处理时间' })
  processTime: Date

  @Column({ type: 'datetime', nullable: true, comment: '完成时间' })
  completeTime: Date

  @Column({ type: 'datetime', nullable: true, comment: '审核时间' })
  reviewTime: Date

  @ManyToOne(() => UserEntity)
  @JoinColumn({ name: 'operator_id' })
  operator: UserEntity

  @ManyToOne(() => UserEntity, { nullable: true })
  @JoinColumn({ name: 'reviewer_id' })
  reviewer: UserEntity

  @ManyToOne(() => WorkOrderEntity, order => order.records)
  @JoinColumn({ name: 'work_order_id' })
  workOrder: WorkOrderEntity
}
