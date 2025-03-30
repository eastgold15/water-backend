import { IntersectionType, PartialType, PickType } from '@nestjs/swagger'
import { PagerDto } from '~/common/dto/pager.dto'
import { CreateDeviceBaseDto } from './create-device.dto'

// export class UpdateDeviceDto extends PartialType(CreateDeviceBaseDto) { }
export class UpdateDeviceBaseDto extends PartialType(CreateDeviceBaseDto) { }

//
export class findDeviceDto extends PickType(CreateDeviceBaseDto, ['status', 'deviceType']) { }

// 分页查询设备
export class findDevicePageDto extends IntersectionType(findDeviceDto, PagerDto) { }
