import { Body, Controller, Delete, Get, Param, Patch, Post, Query } from '@nestjs/common'
import { ApiBody, ApiOperation, ApiParam, ApiResponse, ApiTags } from '@nestjs/swagger'
import { AreaService } from './area.service'
import { AreaByPageDto, CreateAreaDto } from './dto/create-area.dto'
import { UpdateAreaDto } from './dto/update-area.dto'
import { AreaEntity } from './entities/area.entity'

@ApiTags('区域管理')
@Controller('area')
export class AreaController {
  constructor(private readonly areaService: AreaService) { }

  @Post()
  @ApiOperation({ summary: '创建区域', description: '创建一个新的区域节点' })
  @ApiBody({ type: CreateAreaDto })
  @ApiResponse({ status: 201, type: AreaEntity, description: '创建成功' })
  @ApiResponse({ status: 400, description: '参数错误' })
  create(@Body() createAreaDto: CreateAreaDto) {
    return this.areaService.create(createAreaDto)
  }

  @Get()
  @ApiOperation({ summary: '分页获取区域树', description: '获取完整的区域树形结构' })
  @ApiResponse({ status: 200, type: [AreaEntity], description: '查询成功' })
  findAllByPage(@Query() dto: AreaByPageDto) {
    return this.areaService.findAll(dto)
  }


  @Get(':id')
  @ApiOperation({ summary: '获取区域详情', description: '根据ID获取区域详细信息' })
  @ApiParam({ name: 'id', description: '区域ID', example: 1 })
  @ApiResponse({ status: 200, type: AreaEntity, description: '查询成功' })
  @ApiResponse({ status: 404, description: '区域不存在' })
  findOne(@Param('id') id: string) {
    return this.areaService.findOne(+id)
  }

  @Patch(':id')
  @ApiOperation({ summary: '更新区域', description: '更新区域信息' })
  @ApiParam({ name: 'id', description: '区域ID', example: 1 })
  @ApiBody({ type: UpdateAreaDto })
  @ApiResponse({ status: 200, type: AreaEntity, description: '更新成功' })
  @ApiResponse({ status: 404, description: '区域不存在' })
  update(@Param('id') id: string, @Body() updateAreaDto: UpdateAreaDto) {
    return this.areaService.update(+id, updateAreaDto)
  }

  @Delete(':id')
  @ApiOperation({ summary: '删除区域', description: '删除指定区域及其子区域' })
  @ApiParam({ name: 'id', description: '区域ID', example: 1 })
  @ApiResponse({ status: 200, description: '删除成功' })
  @ApiResponse({ status: 404, description: '区域不存在' })
  remove(@Param('id') id: string) {
    return this.areaService.remove(+id)
  }
}
