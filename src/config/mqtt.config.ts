import { ConfigType, registerAs } from '@nestjs/config'

export const mqttRegToken = 'mqtt'

export const MqttConfig = registerAs(mqttRegToken, () => ({
  host: process.env.MQTT_HOST || 'mqtt://broker.emqx.io',
  port: Number.parseInt(process.env.MQTT_PORT) || 1883,
  username: process.env.MQTT_USERNAME || '',
  password: process.env.MQTT_PASSWORD || '',
  clientId: `nest-admin-${process.pid}`,
  clean: true,
  connectTimeout: 4000,
  reconnectPeriod: 1000,
  topics: {
    data: 'devices/+/data',
    status: 'devices/+/status',
  },
}))

export type IMqttConfig = ConfigType<typeof MqttConfig>
