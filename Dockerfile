FROM maven:3.6.0-jdk-8-slim AS build
# 设置工作目录
WORKDIR /app
# 将项目文件复制到容器中
COPY . /app
# 下载并解压Maven安装包
# 构建Maven依赖
RUN mvn clean package -DskipTests

FROM openjdk:8-jdk-alpine

# 运行Spring Boot应用
CMD ["java", "-jar", "target/*.jar"]