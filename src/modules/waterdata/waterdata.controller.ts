import { Body, Controller, Get, Param, Patch, Post } from '@nestjs/common'
import { CreateWaterdatumDto } from './dto/create-waterdatum.dto'
import { UpdateWaterdatumDto } from './dto/update-waterdatum.dto'
import { WaterdataService } from './waterdata.service'

@Controller('waterdata')
export class WaterdataController {
  constructor(private readonly waterdataService: WaterdataService) { }

  @Post()
  create(@Body() createWaterdatumDto: CreateWaterdatumDto) {
    return this.waterdataService.create(createWaterdatumDto)
  }

  @Get()
  findAll() {
    return this.waterdataService.findAll()
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.waterdataService.findOne(+id)
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateWaterdatumDto: UpdateWaterdatumDto) {
    return this.waterdataService.update(+id, updateWaterdatumDto)
  }
}
