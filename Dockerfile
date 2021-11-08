FROM usiegj00/hadoop-pig

MAINTAINER mouez yazidi <mouez.yazidi2016@gmail.com>

### HDFS USER

USER root

### Sqoop Installation

ADD sqoop-1.4.7.bin__hadoop-2.6.0.tar.gz /usr/local/
RUN mv /usr/local/sqoop-1.4.7.bin__hadoop-2.6.0 /usr/local/sqoop

ENV SQOOP_HOME /usr/local/sqoop
ENV SQOOP_CONF_DIR $SQOOP_HOME/conf
ENV PATH $SQOOP_HOME/bin:$PATH


#ADD mysql-connector-java-5.1.4-bin.jar $SQOOP_HOME/lib/
RUN mkdir -p $SQOOP_HOME/server/lib/
COPY mysql-connector-java-5.1.4-bin.jar $SQOOP_HOME/lib/
ADD sqoop.properties $SQOOP_HOME/conf/

### Expose Ports
EXPOSE 22 9000 12000

