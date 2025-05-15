# 使用多阶段构建减少最终镜像体积
FROM node:22-alpine AS base

# 参数和变量定义
ARG PROJECT_DIR
ENV PNPM_HOME="/pnpm" \
    PATH="$PNPM_HOME:$PATH"

# 安装全局依赖 npm
RUN corepack enable && \
    npm install -g pm2

# 设置工作目录和时区
WORKDIR $PROJECT_DIR = /nest-admin


COPY .  ./
RUN chmod +x ./wait-for

#  设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone





# --- 依赖安装阶段 ---
FROM base AS deps
RUN --mount=type=cache,id=pnpm,target=/pnpm/store \
    pnpm install --frozen-lockfile
    # 构建项目
RUN pnpm run build



# --- 生产阶段 ---
FROM base  AS production

COPY --from=deps /pnpm/store /pnpm/store  
COPY --from=deps $PROJECT_DIR/dist ./dist  
COPY --from=deps $PROJECT_DIR/node_modules ./node_modules  

# 确保 wait-for 脚本可执行（如果需要）
COPY --from=deps $PROJECT_DIR/wait-for ./wait-for
COPY --from=deps $PROJECT_DIR/ecosystem.config.js ./ecosystem.config.js
RUN chmod +x ./wait-for

# 暴露端口
EXPOSE ${APP_PORT}

# 启动命令
CMD ["pm2-runtime", "dist/main.js"] 






