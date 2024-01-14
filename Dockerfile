# 指定基础镜像为Java开发环境
FROM maven:latest

# 设置工作目录
WORKDIR /app

# 将本地项目文件复制到容器中的/app目录下
COPY . /app

# 构建Maven依赖
RUN mvn clean package -DskipTests

# 运行Spring Boot应用
CMD ["java", "-jar", "target/*.jar"]