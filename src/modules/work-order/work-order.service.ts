import { Injectable } from '@nestjs/common'

import { InjectRepository } from '@nestjs/typeorm'
import { Like, Repository } from 'typeorm'

import { paginate } from '~/helper/paginate'
import { CreateWorkOrderDto } from './dto/create-work-order.dto'

import { QueryWorkOrderDto } from './dto/query-work-order.dto'
import { UpdateWorkOrderDto } from './dto/update-work-order.dto'

import { WorkOrderEntity } from './entities/work-order.entity'
import { WorkOrderRecordEntity } from './entities/work-order-record.entity'

@Injectable()
export class WorkOrderService {
  constructor(
    @InjectRepository(WorkOrderEntity)
    private workOrderRepository: Repository<WorkOrderEntity>,

    @InjectRepository(WorkOrderRecordEntity)
    private recordRepository: Repository<WorkOrderRecordEntity>,
  ) { }

  async findAll() {
    return this.workOrderRepository.find()
  }

  /**
   * 分页工单信息查询
   *
   */
  async list({ page, pageSize, ...data }: QueryWorkOrderDto & { page: number, pageSize: number }) {
    const queryBuilder = this.workOrderRepository.createQueryBuilder('order')
      .leftJoinAndSelect('order.records', 'record') // 关联查询
      .where({
        ...(data.orderId ? { orderId: data.orderId } : null),
        ...(data.faultLocation ? { faultLocation: Like(`%${data.faultLocation}%`) } : null),
        ...(data.orderStatus ? { orderStatus: data.orderStatus } : null),
      })

    return paginate<WorkOrderEntity>(queryBuilder, { page, pageSize })
  }

  async createRepairOrder(dto: CreateWorkOrderDto, userId: number) {
    const orderNo = `WO${Date.now()}`

    // 创建工单
    const workOrder = this.workOrderRepository.create({
      ...dto,
      orderId: orderNo,
      orderStatus: 0, // 待处理
    })
    const savedOrder = await this.workOrderRepository.save(workOrder)
    // 创建上报记录
    await this.recordRepository.save({
      type: 'report',
      images: dto.imagesUrl || [],
      location: dto.faultLocation,
      description: dto.faultDesc,
      operator: { id: userId },
      workOrder: { id: savedOrder.id },
    })

    return savedOrder
  }

  async completeOrder(id: number, operatorId: number, dto: UpdateWorkOrderDto) {
    // 更新工单状态
    await this.workOrderRepository.update(id, {
      orderStatus: 2, // 已完成
      updatedAt: new Date(),
    })

    // 创建完成记录
    return this.recordRepository.save({
      type: 'complete',
      images: dto.imagesUrl || [],
      description: dto.faultDesc,
      operator: { id: operatorId },
      workOrder: { id }, // 这里会自动使用正确的列名
      completeTime: new Date(),
    })
  }

  async reviewOrder(id: number, reviewerId: number, approved: boolean) {
    const status = approved ? 3 : 4 // 3:已通过 4:已驳回
    const recordType = approved ? 'approve' : 'reject'

    // 更新工单状态
    await this.workOrderRepository.update(id, {
      orderStatus: status,
      updatedAt: new Date(),
    })

    // 创建审核记录
    return this.recordRepository.save({
      type: recordType,
      reviewer: { id: reviewerId },
      workOrder: { id },
      reviewTime: new Date(),
    })
  }

  async findRecordsByOrderId(orderId: string) {
    return this.workOrderRepository.findOne({
      where: { orderId },
      relations: ['records'], // 关联查询记录
      order: {
        records: {
          createdAt: 'DESC', // 按创建时间倒序
        },
      },
    })
  }
}
