FROM qaware-oss-docker-registry.bintray.io/base/alpine-k8s-openjdk8:8u121
MAINTAINER Mario-Leander Reimer <mario-leander.reimer@qaware.de>

RUN mkdir -p /opt/cloud-native-eureka

COPY build/libs/cloud-native-eureka-1.1.0.jar /opt/cloud-native-eureka/cloud-native-eureka.jar
RUN chmod 755 /opt/cloud-native-eureka/cloud-native-eureka.jar

EXPOSE 8761
CMD /opt/cloud-native-eureka/cloud-native-eureka.jar
