import { Body, Controller, Post } from '@nestjs/common'
import { ApiBody, ApiOperation, ApiResponse, ApiTags } from '@nestjs/swagger'
import { MockDeviceDto } from '../dto/create-device.dto'
import { DeviceMockService } from './mock.service'

@ApiTags('设备管理/mock')
@Controller('device')
export class DeviceMockController {
  constructor(
    private readonly deviceMockService: DeviceMockService,
  ) { }

  @ApiOperation({
    summary: '生成模拟数据',
    description: '根据设备ID生成指定持续时间的模拟数据',
  })
  @ApiBody({
    type: MockDeviceDto,
    description: '设备ID列表和模拟持续时间(毫秒)',
  })
  @ApiResponse({
    status: 200,
    description: '模拟数据生成成功',
  })
  @ApiResponse({
    status: 400,
    description: '参数错误',
  })
  @Post('mock')
  async generateMockData(@Body() dto: MockDeviceDto) {
    const deviceIds = dto.deviceIds.map(id => +id)
    return await this.deviceMockService.generateDeviceData(deviceIds, dto.duration)
  }
}
