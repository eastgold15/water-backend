import { ApiPropertyOptional } from '@nestjs/swagger'
import { IsOptional, IsString } from 'class-validator'

export class QueryWorkOrderDto {
  @ApiPropertyOptional({ description: '工单ID模糊查询' })
  @IsOptional()
  @IsString()
  orderId?: string

  @ApiPropertyOptional({ description: '故障地点模糊查询' })
  @IsOptional()
  @IsString()
  faultLocation?: string

  @ApiPropertyOptional({ description: '状态查询(0-4)' })
  @IsOptional()
  @IsString()
  orderStatus?: string
}
