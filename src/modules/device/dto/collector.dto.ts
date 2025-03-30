// 生成数据采集dto
// 设备直接给我发数据，我在接受时会自动记录时间
import { ApiProperty } from '@nestjs/swagger'
import { IsInt, IsNumber, IsString } from 'class-validator'

export class CollectorDto {
  @ApiProperty({ description: '设备ID' })
  @IsInt()
  deviceId: number

  @ApiProperty({
    enum: ['flow_rate', 'pressure', 'temperature'],
    description: '指标类型',
  })
  @IsString()
  metricType: string

  @ApiProperty({ description: '指标值' })
  @IsNumber()
  metricValue: number

  @ApiProperty({ required: false, description: '指标单位' })
  @IsString()
  unit?: string

  @ApiProperty({
    required: false,
    description: '额外信息(JSON字符串)',
  })
  extraInfo?: string
}
