import { ApiProperty } from '@nestjs/swagger'
import { IsEmail, IsNotEmpty, IsNumber, IsOptional, IsPhoneNumber, IsString, IsUrl } from 'class-validator'

export class CreateOrganizationDto {
  @ApiProperty({ description: '组织名称', example: 'XX科技有限公司' })
  @IsNotEmpty({ message: '组织名称不能为空' })
  @IsString({ message: '组织名称必须是字符串' })
  name: string

  @ApiProperty({ description: '组织地址', required: false, example: '北京市海淀区' })
  @IsOptional()
  @IsString({ message: '地址必须是字符串' })
  address?: string

  @ApiProperty({ description: '联系电话', required: false, example: '13800138000' })
  @IsOptional()
  @IsPhoneNumber('CN', { message: '请输入有效的电话号码' })
  contactPhone?: string

  @ApiProperty({ description: '邮箱', required: false, example: 'contact@example.com' })
  @IsOptional()
  @IsEmail({}, { message: '请输入有效的邮箱地址' })
  email?: string

  @ApiProperty({ description: '组织Logo URL', required: false, example: 'https://example.com/logo.png' })
  @IsOptional()
  @IsUrl({}, { message: '请输入有效的URL地址' })
  logoUrl?: string

  @ApiProperty({
    description: '组织状态: 1-启用, 0-禁用',
    required: false,
    example: 1,
    enum: [0, 1],
  })
  @IsOptional()
  @IsNumber({}, { message: '状态必须是数字' })
  status?: number
}
