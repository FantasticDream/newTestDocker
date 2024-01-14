# 指定基础镜像为Java开发环境
# 使用官方的Java 8镜像作为基础镜像
FROM openjdk:8-jdk-alpine

# 设置工作目录
WORKDIR /app

# 下载并解压Maven安装包
RUN apt-get update && apt-get install -y maven

# 将项目文件复制到容器中
COPY . /app

# 构建Maven依赖
RUN mvn clean package -DskipTests

# 运行Spring Boot应用
CMD ["java", "-jar", "target/*.jar"]