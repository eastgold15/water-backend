import { ApiProperty } from '@nestjs/swagger'
import { IsArray, IsNotEmpty, IsOptional, IsString } from 'class-validator'
import { CompleteEntity } from '~/common/entity/common.entity'

// 上传信息
// 扫码报修-上报维修地点
export class CreateWorkOrderDto extends CompleteEntity {
  @ApiProperty({ description: '故障地点' })
  @IsNotEmpty()
  @IsString()
  faultLocation: string

  @ApiProperty({ description: '故障类型' })
  @IsNotEmpty()
  @IsString()
  faultType: string

  @ApiProperty({ description: '故障描述', required: false })
  @IsOptional()
  @IsString()
  faultDesc?: string

  @ApiProperty({ description: '故障等级(1-5)', required: false })
  @IsOptional()
  faultLevel?: number

  @ApiProperty({
    type: [String],
    description: '已上传的图片URL数组',
    required: false,
  })
  @IsOptional()
  @IsArray()
  imagesUrl?: string[]
}
