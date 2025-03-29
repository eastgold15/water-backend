import { Column, Entity, OneToMany } from 'typeorm'
import { CommonEntity } from '~/common/entity/common.entity'
import { Area } from '~/modules/area/entities/area.entity'
import { UserEntity } from '~/modules/user/user.entity'

// 组织信息表
@Entity({ name: 'sys1_organization' })
export class Organization extends CommonEntity {
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
  @OneToMany(() => Area, area => area.organization)
  areas?: Area[] // 区域
}

// CREATE TABLE `sys_organization` (
//   `id` INT NOT NULL AUTO_INCREMENT,
//   `name` VARCHAR(255) NOT NULL COMMENT '组织名称',
//   `address` VARCHAR(255) COMMENT '地址',
//   `contact_phone` VARCHAR(20) COMMENT '联系电话',
//   `email` VARCHAR(100) COMMENT '邮箱',
//   `logo_url` VARCHAR(255) COMMENT '组织Logo URL',
//   `status` TINYINT DEFAULT 1 COMMENT '状态:1-启用,0-禁用',
//   `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
//   `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
//   PRIMARY KEY (`id`)
// ) COMMENT='';

// -- 在用户表中添加组织外键
// ALTER TABLE `sys_user` ADD COLUMN `organization_id` INT COMMENT '所属组织ID';
// ALTER TABLE `sys_user` ADD CONSTRAINT `fk_user_organization` FOREIGN KEY (`organization_id`) REFERENCES `sys_organization` (`id`);
