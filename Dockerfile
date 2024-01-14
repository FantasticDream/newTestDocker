 基于Java镜像构建容器
FROM openjdk:8-jdk-alpine

# 设置工作目录
WORKDIR /app

# 将本地的pom.xml文件复制到容器中
COPY pom.xml .

# 安装Maven依赖
RUN mvn dependency:go-offline -B

# 将所有源代码复制到容器中
COPY src ./src/main/java

# 运行Maven命令进行构建
RUN mvn clean package -DskipTests

# 运行Spring Boot应用
CMD ["java", "-jar", "target/*.jar"]