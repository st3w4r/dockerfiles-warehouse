FROM st3w4r/dockerfiles-warehouse:dev-scala

# SPARK

# COPY spark-2.2.0-bin-hadoop2.7.tgz /app/spark.tgz

RUN curl http://apache.mediamirrors.org/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz > spark.tgz

RUN mkdir spark
RUN tar -xvf spark.tgz -C spark --strip-components 1

EXPOSE 8080

WORKDIR /app/spark

CMD /bin/bash
