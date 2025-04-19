import { Injectable, NotFoundException } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { PagerDto } from '~/common/dto/pager.dto'
import { paginate } from '~/helper/paginate'
import { Pagination } from '~/helper/paginate/pagination'
import { CreateOrganizationDto } from './dto/create-organization.dto'
import { UpdateOrganizationDto } from './dto/update-organization.dto'
import { OrganizationEntity } from './entities/organization.entity'

@Injectable()
export class OrganizationService {
  constructor(
    @InjectRepository(OrganizationEntity)
    private orgRepo: Repository<OrganizationEntity>,
  ) { }

  async create(createOrganizationDto: CreateOrganizationDto) {
    const org = this.orgRepo.create(createOrganizationDto)
    return await this.orgRepo.save(org)
  }

  async findAll({ page, pageSize }: PagerDto): Promise<Pagination<OrganizationEntity>> {
    return await paginate(this.orgRepo, { page, pageSize }, {
      order: { id: 'DESC' },
    })
  }

  async findOne(id: number) {
    const org = await this.orgRepo.findOne({
      where: { id },
      relations: ['users', 'areas'],
    })
    if (!org) {
      throw new NotFoundException('组织不存在')
    }
    return org
  }

  async update(id: number, updateOrganizationDto: UpdateOrganizationDto) {
    const result = await this.orgRepo.update(id, updateOrganizationDto)
    if (result.affected === 0) {
      throw new NotFoundException('组织不存在')
    }
    return await this.findOne(id)
  }

  async remove(id: number) {
    const org = await this.findOne(id)
    return await this.orgRepo.remove(org)
  }
}
