import { Body, Controller, Get, Param, Post, Put, Query, UseGuards } from '@nestjs/common'

import { ApiOperation, ApiQuery, ApiTags } from '@nestjs/swagger'

import { ApiResult } from '~/common/decorators/api-result.decorator'
import { AuthUser } from '../auth/decorators/auth-user.decorator'
import { LocalGuard } from '../auth/guards/local.guard'

import { CreateWorkOrderDto } from './dto/create-work-order.dto'

import { QueryWorkOrderDto } from './dto/query-work-order.dto'
import { UpdateWorkOrderDto } from './dto/update-work-order.dto'
import { WorkOrderEntity } from './entities/work-order.entity'
import { WorkOrderService } from './work-order.service'

// 不需要认证

@ApiTags('扫码报修-维修工单')
@Controller('work-orders')
export class WorkOrderController {
  constructor(private readonly workOrderService: WorkOrderService) { }

  // 获取所有的工单

  @ApiOperation({ summary: '获取所有维修工单' })
  @ApiResult({ type: [WorkOrderEntity] })
  @Get()
  async findAll() {
    return this.workOrderService.findAll()
  }

  @ApiOperation({ summary: '根据条件查询维修工单' })
  @ApiResult({ type: [WorkOrderEntity], isPage: true })
  @Get('/list')
  async list(@Query() dto: QueryWorkOrderDto & { page: number, pageSize: number }) {
    return this.workOrderService.list(dto)
  }

  // 创造工单
  @ApiOperation({ summary: '上报维修地点' })
  @UseGuards(LocalGuard)
  @Post('report')
  async report(
    @Body() dto: CreateWorkOrderDto,
    @AuthUser('uid') userId: number,
  ) {
    return this.workOrderService.createRepairOrder(dto, userId)
  }

  // 处理工单
  @ApiOperation({ summary: '完成维修' })
  @Put(':id/complete')
  async complete(
    @Param('id') id: string,
    @AuthUser('uid') operatorId: number,
    @Body() dto: UpdateWorkOrderDto,
  ) {
    return this.workOrderService.completeOrder(+id, operatorId, dto)
  }

  // 根据工单号查维修记录
  @ApiOperation({ summary: '根据工单号查询维修记录' })
  @ApiQuery({ name: 'orderId', description: '工单编号' })
  @ApiResult({ type: WorkOrderEntity })
  @Get('records')
  async findRecords(@Query('orderId') orderId: string) {
    return this.workOrderService.findRecordsByOrderId(orderId)
  }

  // 审核工单
  @ApiOperation({ summary: '审核维修工单' })
  @Put(':id/review')
  async review(
    @Param('id') id: string,
    @AuthUser('uid') reviewerId: number,
    @Body('approved') approved: boolean,
  ) {
    return this.workOrderService.reviewOrder(+id, reviewerId, approved)
  }
}
