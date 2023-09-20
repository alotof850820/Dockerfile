FROM centos:7
LABEL maintainer="WSH"

ENV MYPATH /usr/local
WORKDIR $MYPATH
 
#安裝vim編輯器
RUN yum -y install vim
#安裝ifconfig指令查看網路IP
RUN yum -y install net-tools
#安裝java6及lib庫
RUN yum -y install glibc.i686
RUN mkdir /usr/local/java
#ADD 是相對路徑jar,把jdk-10u171-linux-x64.tar.gz加到容器中,安裝包必須要和Dockerfile檔在同一位置
ADD jdk-21_linux-x64_bin.tar.gz /usr/local/java/
#配置java環境變數
ENV JAVA_HOME /usr/local/java/jdk-1.8.0_171
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$PATH
 
EXPOSE 80
 
CMD echo $MYPATH
CMD echo "success--------------ok"
CMD /bin/bash

