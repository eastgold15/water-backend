import { Column, Entity, JoinColumn, ManyToOne, OneToMany } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { DeviceBase } from '~/modules/device/entities/device_base.entity'
import { Organization } from '~/modules/organization/entities/organization.entity'

@Entity({ name: 'location_area' })
export class Area extends CommonEntity {
  // 父级ID
  @Column({ name: 'parent_id', nullable: true })
  parentId: number

  // 区域编码
  @Column({ name: 'area_code', unique: true })
  areaCode: string

  // 区域名称
  @Column({ name: 'area_name' })
  areaName: string

  // 区域类型（校区/楼栋/楼层）
  @Column({ name: 'area_type', nullable: true })
  areaType: string

  // 区域楼层
  @Column({ name: 'area_floor' })
  areaFloor: string

  // 区域人数
  @Column({ name: 'people_count', nullable: true })
  people_count: number

  @ManyToOne(() => Organization, org => org.areas)
  @JoinColumn({ name: 'organization_id' })
  organization: Organization

  @OneToMany(() => DeviceBase, device => device.installArea)
  devices: DeviceBase[]
}
