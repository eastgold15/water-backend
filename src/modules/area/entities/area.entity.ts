import { Column, Entity, JoinColumn, ManyToOne, OneToMany, Tree, TreeChildren, TreeParent } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { DeviceBase } from '~/modules/device/entities/device_base.entity'
import { OrganizationEntity } from '~/modules/organization/entities/organization.entity'

@Entity({ name: 'location_area' })
@Tree('materialized-path') // 使用物化路径实现树形结构
export class AreaEntity extends CommonEntity {
  // 区域编码
  @Column({ name: 'area_code', unique: true })
  areaCode: string

  // 区域名称
  @Column({ name: 'area_name' })
  areaName: string

  // 区域类型枚举（校区/楼栋/楼层/校门/快递站等）
  @Column({
    name: 'area_type',
    type: 'enum',
    enum: ['CAMPUS', 'BUILDING', 'FLOOR', 'GATE', 'EXPRESS_STATION', 'OTHER'],
    default: 'OTHER',
  })
  areaType: string

  // 区域层级
  @Column({ name: 'level', default: 0 })
  level: number

  // 区域坐标（用于地图定位）
  @Column({ name: 'coordinates', type: 'json', nullable: true })
  coordinates: { lat: number, lng: number }

  // 父区域
  @TreeParent()
  parent: AreaEntity

  // 子区域
  @TreeChildren()
  children: AreaEntity[]

  // 所属组织
  @ManyToOne(() => OrganizationEntity, org => org.areas)
  @JoinColumn({ name: 'organization_id' })
  organization: OrganizationEntity

  // 关联设备
  @OneToMany(() => DeviceBase, device => device.installArea)
  devices: DeviceBase[]
}
