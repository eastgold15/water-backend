import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { TreeRepository } from 'typeorm'
import { CreateAreaDto } from './dto/create-area.dto'
import { UpdateAreaDto } from './dto/update-area.dto'
import { AreaEntity } from './entities/area.entity'

@Injectable()
export class AreaService {
  constructor(
    @InjectRepository(AreaEntity)
    private areaRepository: TreeRepository<AreaEntity>,
  ) {}

  async create(createAreaDto: CreateAreaDto) {
    const area = this.areaRepository.create(createAreaDto)
    console.log(createAreaDto) // Log the createAreaDt
    if (createAreaDto.parentId) {
      area.parent = await this.areaRepository.findOneBy({ id: createAreaDto.parentId })
    }
    return this.areaRepository.save(area)
  }

  async findAll() {
    return this.areaRepository.findTrees()
  }

  async findOne(id: number) {
    return this.areaRepository.findOne({
      where: { id },
      relations: ['parent', 'children', 'organization', 'devices'],
    })
  }

  async update(id: number, updateAreaDto: UpdateAreaDto) {
    const area = await this.areaRepository.findOneBy({ id })
    if (!area)
      throw new Error('Area not found')

    if (updateAreaDto.parentId) {
      area.parent = await this.areaRepository.findOneBy({ id: updateAreaDto.parentId })
    }

    Object.assign(area, updateAreaDto)
    return this.areaRepository.save(area)
  }

  async remove(id: number) {
    const area = await this.areaRepository.findOneBy({ id })
    if (!area)
      throw new Error('Area not found')
    return this.areaRepository.remove(area)
  }
}
