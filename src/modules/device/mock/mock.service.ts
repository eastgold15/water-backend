import { Injectable, OnModuleDestroy } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'
import { DeviceBase } from '../entities/device_base.entity'
import { PressureMeterMetric } from '../entities/pressure_meter_metric.entity'
import { WaterMeterMetric } from '../entities/water_meter_metric.entity'

@Injectable()
export class DeviceMockService implements OnModuleDestroy {
  private activeMocks = new Map<number, { timer: NodeJS.Timeout, endTime: number }>()

  constructor(
    @InjectRepository(WaterMeterMetric)
    private waterMeterRepo: Repository<WaterMeterMetric>,
    @InjectRepository(PressureMeterMetric)
    private pressureMeterRepo: Repository<PressureMeterMetric>,
    @InjectRepository(DeviceBase)
    private deviceRepo: Repository<DeviceBase>,
  ) { }

  async generateDeviceData(deviceIds: number[], duration: number): Promise<void> {
    try {
      const endTime = Date.now() + duration

      await Promise.all(deviceIds.map(async (deviceId) => {
        try {
          const device = await this.deviceRepo.findOne({
            where: { id: deviceId },
            select: ['id', 'deviceType'],
          })

          if (!device) {
            console.warn(`设备 ${deviceId} 不存在`)
            return
          }

          // 初始生成数据
          await this.generateDataByType(deviceId, device.deviceType)

          // 启动定时模拟
          const timer = setInterval(async () => {
            try {
              if (Date.now() >= endTime) {
                this.stopMockForDevice(deviceId)
                return
              }
              await this.generateDataByType(deviceId, device.deviceType)
            } catch (err) {
              console.error(`设备 ${deviceId} 定时模拟出错:`, err)
            }
          }, 10000)

          this.activeMocks.set(deviceId, { timer, endTime })
        } catch (err) {
          console.error(`设备 ${deviceId} 模拟初始化失败:`, err)
        }
      }))
    } catch (err) {
      console.error('模拟数据生成失败:', err)
      throw err
    }
  }

  private async generateDataByType(deviceId: number, deviceType: number) {
    if (deviceType === 1) {
      await this.generateFlowData(deviceId)
    } else if (deviceType === 2) {
      await this.generatePressureMeterData(deviceId)
    }
  }

  private stopMockForDevice(deviceId: number) {
    const mockInfo = this.activeMocks.get(deviceId)
    if (mockInfo) {
      clearInterval(mockInfo.timer)
      this.activeMocks.delete(deviceId)
    }
  }

  // 修改onModuleDestroy以使用新的停止方法
  onModuleDestroy() {
    this.activeMocks.forEach((_, deviceId) => this.stopMockForDevice(deviceId))
  }

  // 生成水表设备数据
  async generateFlowData(deviceId: number) {
    const baseFlow = Math.random() * 10 + 5
    const signalStrength = Math.random() * 100

    await this.waterMeterRepo.save({
      device: { id: deviceId },
      flowRate: `${baseFlow.toFixed(2)}`,
      totalFlow: `${(baseFlow * 0.1).toFixed(2)}`,
      signalStrength: `${signalStrength.toFixed(2)}%`,
      uploadTime: new Date()
    })
  }

  // 生成压力设备数据
  async generatePressureMeterData(deviceId: number) {
    const basePressure = Math.random() * 5 + 1
    const longitude = 116.404 + Math.random() * 0.01
    const latitude = 39.915 + Math.random() * 0.01

    await this.pressureMeterRepo.save({
      device: { id: deviceId },
      pressure: `${basePressure.toFixed(2)}`,
      longitude,
      latitude,
      uploadTime: new Date()
    })
  }

  // 删除原来的createMetric方法
}
