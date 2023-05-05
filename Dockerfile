FROM apache/spark-py:v3.2.3

USER root

ADD \
https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.1/hadoop-aws-3.3.1.jar \
https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.418/aws-java-sdk-bundle-1.12.418.jar \
https://repo1.maven.org/maven2/org/apache/spark/spark-hadoop-cloud_2.13/3.3.1/spark-hadoop-cloud_2.13-3.3.1.jar \
https://storage.googleapis.com/hadoop-lib/gcs/gcs-connector-hadoop3-latest.jar \
/opt/spark/jars/

RUN chmod 0644 /opt/spark/jars/hadoop-aws-3.3.1.jar && \
    chmod 0644 /opt/spark/jars/aws-java-sdk-bundle-1.12.418.jar && \
    chmod 0644 /opt/spark/jars/gcs-connector-hadoop3-latest.jar && \
    chmod 0644 /opt/spark/jars/spark-hadoop-cloud_2.13-3.3.1.jar

RUN pip install pyspark==3.2.3 mlflow==2.1.1

USER 185
