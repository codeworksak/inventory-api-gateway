FROM eclipse-temurin:25-jre-alpine

WORKDIR /inventory-gateway

ARG JAR_FILES=target/*.jar
COPY ${JAR_FILES} /inventory-gateway.jar

ENV CATALOG_ROUTE=http://172.17.0.9
ENV CATALOG_PORT=8081
ENV CART_ROUTE=http://172.17.0.6
ENV CART_PORT=8082
ENV INVENTORY_ROUTE=http://172.17.0.5
ENV INV_PORT=8083
ENV ORDER_ROUTE=http://172.17.0.8
ENV ORDER_PORT=8084

EXPOSE 8085

ENTRYPOINT ["java", "-jar", "/inventory-gateway.jar"]