import { Body, Controller, Delete, Get, Param, Patch, Post, Query } from '@nestjs/common'
import { ApiBody, ApiOperation, ApiQuery, ApiResponse, ApiTags } from '@nestjs/swagger'
import { PagerDto } from '~/common/dto/pager.dto'
import { Pagination } from '~/helper/paginate/pagination'
import { DeviceService } from './device.service'
import { CreateDeviceBaseDto } from './dto/create-device.dto'
import { findDevicePageDto, UpdateDeviceBaseDto } from './dto/update-device.dto'
import { DeviceBase } from './entities/device_base.entity'

@ApiTags('设备管理')
@Controller('device')
export class DeviceController {
  constructor(
    private readonly deviceService: DeviceService,
  ) { }

  @ApiOperation({
    summary: '创建设备',
    description: '创建一个新的设备记录',
  })
  @ApiBody({
    type: CreateDeviceBaseDto,
    description: '设备创建参数',
  })
  @ApiResponse({
    status: 201,
    description: '设备创建成功',
    type: DeviceBase,
  })
  @ApiResponse({
    status: 400,
    description: '参数错误',
  })
  @Post('/create')
  async createDevice(@Body() createDeviceBase: CreateDeviceBaseDto) {
    return await this.deviceService.createDevie(createDeviceBase)
  }

  @ApiOperation({
    summary: '获取设备列表',
    description: '分页获取所有设备列表',
  })
  @ApiResponse({
    status: 200,
    description: '设备列表获取成功',
    type: Pagination<DeviceBase>,
  })
  @Get('list')
  async findDevices(@Query() dto: PagerDto) {
    return await this.deviceService.findAll(dto)
  }

  @ApiOperation({
    summary: '条件查询设备',
    description: '根据条件分页查询设备列表',
  })
  @ApiQuery({
    name: 'isData',
    required: false,
    description: '是否包含指标数据',
    type: Boolean,
  })
  @ApiResponse({
    status: 200,
    description: '设备查询成功',
    type: Pagination<DeviceBase>,
  })
  @Get('listPage')
  async getDiviceS(
    @Query() dto: findDevicePageDto,
    @Query('isData') isData: boolean = false,
  ) {
    return await this.deviceService.find(dto, isData)
  }

  @ApiOperation({
    summary: '更新设备信息',
    description: '根据ID更新设备信息',
  })
  @ApiResponse({
    status: 200,
    description: '设备更新成功',
  })
  @ApiResponse({
    status: 404,
    description: '设备不存在',
  })
  @Patch(':id')
  async update(
    @Param('id') id: string,
    @Body() updateDeviceDto: UpdateDeviceBaseDto,
  ) {
    return await this.deviceService.update(+id, updateDeviceDto)
  }

  @ApiOperation({
    summary: '删除设备',
    description: '根据ID删除设备及其关联数据',
  })
  @ApiResponse({
    status: 200,
    description: '设备删除成功',
  })
  @ApiResponse({
    status: 404,
    description: '设备不存在',
  })
  @Delete(':id')
  async remove(@Param('id') id: string) {
    return await this.deviceService.remove(+id)
  }
}
