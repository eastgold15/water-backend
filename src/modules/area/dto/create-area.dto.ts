import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger'
import { IsEnum, IsNumber, IsOptional, IsString } from 'class-validator'

export class CreateAreaDto {
  @ApiProperty({ description: '区域编码', example: 'CAMPUS_001' })
  @IsString()
  areaCode: string

  @ApiProperty({ description: '区域名称', example: '主校区' })
  @IsString()
  areaName: string

  @ApiProperty({
    description: '区域类型',
    enum: ['CAMPUS', 'BUILDING', 'FLOOR', 'GATE', 'EXPRESS_STATION', 'OTHER'],
    example: 'CAMPUS',
  })
  @IsEnum(['CAMPUS', 'BUILDING', 'FLOOR', 'GATE', 'EXPRESS_STATION', 'OTHER'])
  areaType: string

  @ApiPropertyOptional({ description: '区域层级', example: 0 })
  @IsOptional()
  @IsNumber()
  level?: number

  @ApiPropertyOptional({
    description: '区域坐标',
    example: { lat: 39.9042, lng: 116.4074 },
  })
  @IsOptional()
  coordinates?: { lat: number, lng: number }

  @ApiPropertyOptional({ description: '父区域ID', example: 1 })
  @IsOptional()
  @IsNumber()
  parentId?: number

  @ApiPropertyOptional({ description: '所属组织ID', example: 1 })
  @IsOptional()
  @IsNumber()
  organizationId?: number
}
