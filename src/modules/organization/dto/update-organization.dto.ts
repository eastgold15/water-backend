import { ApiProperty, PartialType } from '@nestjs/swagger'
import { IsNotEmpty, IsNumber } from 'class-validator'
import { CreateOrganizationDto } from './create-organization.dto'

export class UpdateOrganizationDto extends PartialType(CreateOrganizationDto) {
  @ApiProperty({ description: '组织ID', example: 1 })
  @IsNotEmpty({ message: '组织ID不能为空' })
  @IsNumber({}, { message: '组织ID必须是数字' })
  id: number
}
