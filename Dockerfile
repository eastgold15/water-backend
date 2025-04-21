# 使用多阶段构建减少最终镜像体积
FROM node:22-alpine AS base

# 参数和变量定义
ARG PROJECT_DIR
ENV DB_HOST=mysql \
    DB_PORT=3306 \
    APP_PORT=7001 \
    PNPM_HOME="/pnpm" \
    PATH="$PNPM_HOME:$PATH"

# 安装全局依赖 npm
RUN corepack enable && \
    npm install -g pm2

# 设置工作目录和时区
WORKDIR $PROJECT_DIR
COPY .  ./
RUN chmod +x ./wait-for
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone





# --- 依赖安装阶段 ---
FROM base AS deps
RUN --mount=type=cache,id=pnpm,target=/pnpm/store \
    pnpm install --frozen-lockfile

# --- 构建阶段 ---
FROM deps AS build
RUN pnpm run build



# 仅复制必要文件
# COPY --from=deps $PROJECT_DIR/node_modules ./node_modules
# COPY --from=build $PROJECT_DIR/dist ./dist
# COPY --from=build $PROJECT_DIR/ecosystem.config.js ./
# COPY --from=build $PROJECT_DIR/wait-for-it.sh ./

RUN chmod +x ./wait-for

# 启动命令
# ENTRYPOINT ./wait-for-it.sh $DB_HOST:$DB_PORT -- \
#     pnpm migration:run && \
#     pm2-runtime ecosystem.config.js
