import { Module } from '@nestjs/common'
import { TypeOrmModule } from '@nestjs/typeorm'
import { AreaController } from './area.controller'
import { AreaService } from './area.service'
import { Area } from './entities/area.entity'

@Module({
  imports: [TypeOrmModule.forFeature([Area])], // 注册 TypeOr
  controllers: [AreaController],
  providers: [AreaService],
})
export class AreaModule { }
