import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { WorkOrderEntity } from './entities/work-order.entity'
import { WorkOrderRecordEntity } from './entities/work-order-record.entity'
import { WorkOrderController } from './work-order.controller'
import { WorkOrderService } from './work-order.service'

@Module({
  imports: [TypeOrmModule.forFeature([WorkOrderEntity, WorkOrderRecordEntity])],
  controllers: [WorkOrderController],
  providers: [WorkOrderService],
})
export class WorkOrderModule { }
