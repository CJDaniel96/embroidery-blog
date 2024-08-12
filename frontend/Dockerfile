# frontend/Dockerfile

# 使用Node.js官方镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /var/www/frontend

COPY . .

# 安装依赖
RUN npm install

RUN npm run build