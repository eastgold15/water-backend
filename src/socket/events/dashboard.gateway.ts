// import { JwtService } from '@nestjs/jwt'
// import { Cron, CronExpression } from '@nestjs/schedule'
// import {
//   GatewayMetadata,
//   MessageBody,
//   OnGatewayConnection,
//   OnGatewayDisconnect,
//   SubscribeMessage,
//   WebSocketGateway,
//   WebSocketServer,
// } from '@nestjs/websockets'
// import { Server, Socket } from 'socket.io'
// import { TokenService } from '~/modules/auth/services/token.service'
// import { WaterdataService } from '~/modules/waterdata/waterdata.service'

// import { CacheService } from '~/shared/redis/cache.service'
// import { createAuthGateway } from '../shared/auth.gateway'

// const AuthGateway = createAuthGateway({ namespace: 'dashboard' })
// @WebSocketGateway<GatewayMetadata>({ namespace: 'dashboard' })
// export class DashboardEventsGateway
//   extends AuthGateway
//   implements OnGatewayConnection, OnGatewayDisconnect {
//   constructor(
//     protected readonly jwtService: JwtService,
//     protected readonly tokenService: TokenService,
//     private readonly cacheService: CacheService,
//     private readonly waterDataService: WaterdataService,
//   ) {
//     super(jwtService, tokenService, cacheService)
//   }

//   @WebSocketServer()
//   protected _server: Server

//   get server() {
//     return this._server
//   }

//   // 订阅水量统计
//   @SubscribeMessage('subscribe:water-stats')
//   async handleSubscribeWaterStats(client: Socket, @MessageBody() data: string): Promise<any> {
//     // data包含客户端发送的消息体
//     console.log('收到消息:', data)

//     // 立即返回当前统计数据
//     const stats = await this.getWaterStats()
//     client.emit('water-stats:update', stats)

//     // 加入统计房间
//     client.join('water-stats-room')
//     return { status: 'subscribed' }
//     return data
//   }

//   // 取消订阅
//   @SubscribeMessage('unsubscribe:water-stats')
//   handleUnsubscribeWaterStats(client: Socket) {
//     client.leave('water-stats-room')
//     return { status: 'unsubscribed' }
//   }

//   // 定时任务 - 每10s更新一次数据
//   @Cron(CronExpression.EVERY_10_SECONDS)
//   async broadcastWaterStats() {
//     const stats = await this.getWaterStats()
//     this.server.to('water-stats-room').emit('water-stats:update', stats)
//   }

//   private async getWaterStats() {
//     const now = new Date()
//     const lastMonth = new Date(now.getFullYear(), now.getMonth() - 1, 1)
//     // 这里可以调用服务获取最新的水量统计数据

//     return {
//       today: await this.waterDataService.getWaterVolume(now, 'day'),
//       month: await this.waterDataService.getWaterVolume(now, 'month'),
//       year: await this.waterDataService.getWaterVolume(now, 'year'),
//       lastMonth: await this.waterDataService.getWaterVolume(lastMonth, 'month'),
//       updatedAt: now.toISOString(),
//     }
//   }
// }
