import { PartialType } from '@nestjs/swagger';
import { CreateWaterdatumDto } from './create-waterdatum.dto';

export class UpdateWaterdatumDto extends PartialType(CreateWaterdatumDto) {}
