import { ApiProperty } from '@nestjs/swagger'
import { IsArray, IsNotEmpty, IsNumber, IsOptional, IsString } from 'class-validator'

export type CreateDeviceDto = CreateWaterMeterDto | CreatePressureMeterDto
// 添加类型守卫函数
export function isWaterMeterDto(dto: CreateDeviceDto): dto is CreateWaterMeterDto {
  return (dto as CreateWaterMeterDto).flowRate !== undefined
}
// 创建基础水表
export class CreateDeviceBaseDto {
  @ApiProperty({ description: '设备编码' })
  @IsString()
  @IsNotEmpty()
  deviceCode: string

  @ApiProperty({
    enum: [1, 2],
    description: '设备类型(1:water_meter水流表,2:pressure_meter压力表)',
  })
  @IsNumber()
  @IsNotEmpty()
  deviceType: number

  @ApiProperty({ required: false, description: '安装区域ID' })
  @IsOptional()
  areaId?: number

  @ApiProperty({ description: '生产厂家' })
  @IsString()
  @IsNotEmpty()
  manufacturer: string

  @ApiProperty({
    required: false,
    enum: [1, 2, 3],
    description: '设备状态(1:正常 2:预警 3:故障)',
  })
  status: number
}

// 创建水流表
export class CreateWaterMeterDto extends CreateDeviceBaseDto {
  @ApiProperty({ required: false, description: '信号强度' })
  @IsString()
  @IsOptional()
  signalStrength?: string

  @ApiProperty({ required: false, description: '累计流量' })
  @IsString()
  @IsOptional()
  totalFlow?: string

  @ApiProperty({ required: false, description: '瞬时流量' })
  @IsString()
  @IsOptional()
  flowRate?: string
}

// 创建压力水表
export class CreatePressureMeterDto {
  @ApiProperty({ required: false, description: '设备口径' })
  @IsString()
  @IsOptional()
  caliber?: string

  @ApiProperty({ required: false, description: '网关ID' })
  @IsString()
  @IsOptional()
  gatewayId?: string

  @ApiProperty({ required: false, description: '经度' })
  @IsString()
  @IsOptional()
  longitude?: string

  @ApiProperty({ required: false, description: '纬度' })
  @IsString()
  @IsOptional()
  latitude?: string
}

export class MockDeviceDto {
  @ApiProperty({
    description: '设备ID列表 [1,2,3]  ',
    example: [1, 2, 3],
    type: [Number],
  })
  @IsArray()
  deviceIds: string[]

  @ApiProperty({ description: '模拟时间(豪秒)' })
  @IsOptional()
  @IsNumber()
  duration?: number
}
