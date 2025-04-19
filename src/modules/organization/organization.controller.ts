import { Body, Controller, Delete, Get, Param, Patch, Post, Query } from '@nestjs/common'
import { ApiBody, ApiOperation, ApiQuery, ApiResponse, ApiTags } from '@nestjs/swagger'
import { PagerDto } from '~/common/dto/pager.dto'
import { Pagination } from '~/helper/paginate/pagination'
import { CreateOrganizationDto } from './dto/create-organization.dto'
import { UpdateOrganizationDto } from './dto/update-organization.dto'
import { OrganizationService } from './organization.service'

@ApiTags('组织管理')
@Controller('organization')
export class OrganizationController {
  constructor(private readonly organizationService: OrganizationService) { }

  @ApiOperation({ summary: '创建组织', description: '创建一个新的组织' })
  @ApiBody({ type: CreateOrganizationDto })
  @ApiResponse({ status: 201, description: '组织创建成功' })
  @ApiResponse({ status: 400, description: '参数错误' })
  @Post()
  async create(@Body() createOrganizationDto: CreateOrganizationDto) {
    return await this.organizationService.create(createOrganizationDto)
  }

  @ApiOperation({ summary: '获取组织列表', description: '分页获取所有组织列表' })
  @ApiQuery({ name: 'page', required: false, description: '页码' })
  @ApiQuery({ name: 'pageSize', required: false, description: '每页数量' })
  @ApiResponse({ status: 200, description: '组织列表获取成功', type: Pagination })
  @Get()
  async findAll(@Query() pager: PagerDto) {
    return await this.organizationService.findAll(pager)
  }

  @ApiOperation({ summary: '获取组织详情', description: '根据ID获取组织详情' })
  @ApiResponse({ status: 200, description: '组织详情获取成功' })
  @ApiResponse({ status: 404, description: '组织不存在' })
  @Get(':id')
  async findOne(@Param('id') id: string) {
    return await this.organizationService.findOne(+id)
  }

  @ApiOperation({ summary: '更新组织信息', description: '根据ID更新组织信息' })
  @ApiBody({ type: UpdateOrganizationDto })
  @ApiResponse({ status: 200, description: '组织更新成功' })
  @ApiResponse({ status: 404, description: '组织不存在' })
  @Patch(':id')
  async update(
    @Param('id') id: string,
    @Body() updateOrganizationDto: UpdateOrganizationDto,
  ) {
    return await this.organizationService.update(+id, updateOrganizationDto)
  }

  @ApiOperation({ summary: '删除组织', description: '根据ID删除组织' })
  @ApiResponse({ status: 200, description: '组织删除成功' })
  @ApiResponse({ status: 404, description: '组织不存在' })
  @Delete(':id')
  async remove(@Param('id') id: string) {
    return await this.organizationService.remove(+id)
  }
}
