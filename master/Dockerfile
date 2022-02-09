FROM hubnortheuropeacr.azurecr.io/spark/spark-base:3.2.1-h2.7-working

LABEL maintainer="Alessandro Vozza <alessandro.vozza@atradius.com>"

COPY master.sh /

RUN wget -P /spark/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-azure/2.7.3/hadoop-azure-2.7.3.jar
RUN wget -P /spark/jars https://repo1.maven.org/maven2/com/microsoft/azure/azure-storage/3.1.0/azure-storage-3.1.0.jar
# RUN wget -q -P /spark/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-azure/3.3.1/hadoop-azure-3.3.1.jar
# RUN wget -q -P /spark/jars  https://repo1.maven.org/maven2/com/microsoft/azure/azure-storage/8.6.6/azure-storage-8.6.6.jar
# RUN wget -q -P /spark/jars  https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-util/11.0.7/jetty-util-11.0.7.jar
# RUN wget -q -P /spark/jars https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-util-ajax/11.0.7/jetty-util-ajax-11.0.7.jar

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8080 7077 6066

CMD ["/bin/bash", "/master.sh"]
