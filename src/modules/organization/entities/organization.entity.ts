import { Column, Entity, OneToMany } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { AreaEntity } from '~/modules/area/entities/area.entity'
import { UserEntity } from '~/modules/user/user.entity'

// 组织信息表
@Entity({ name: 'sys1_organization' })
export class OrganizationEntity extends CommonEntity {
  @Column({ unique: true })
  name: string // 组织名称

  @Column({ unique: true })
  address?: string // 地址

  @Column({ unique: true })
  contactPhone?: string // 联系电话

  @Column({ unique: true })
  email?: string // 邮箱

  @Column({ unique: true })
  logoUrl?: string // 组织Logo U

  @Column({ unique: true })
  status?: number // 状态:1-启用,0-禁用

  @OneToMany(() => UserEntity, user => user.organization)
  users: UserEntity[]

  // 关联区域表
  @OneToMany(() => AreaEntity, area => area.organization)
  areas?: AreaEntity[] // 区域
}
