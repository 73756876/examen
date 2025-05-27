# Imagen base oficial de Java 17 en versión ligera Alpine
FROM openjdk:17-jdk-alpine

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo .jar generado por Maven al contenedor
COPY target/micro-product-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto 8086 que usará la aplicación
EXPOSE 8086

# Comando para ejecutar el archivo jar
ENTRYPOINT ["java","-jar","app.jar"]
