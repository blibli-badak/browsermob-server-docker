FROM java:8-jre-alpine
MAINTAINER Argo triwidodo "argo.triwidodo@gdn-commerce.com"

ADD https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-2.1.4/browsermob-proxy-2.1.4-bin.zip /home/
WORKDIR /home
RUN unzip browsermob-proxy-2.1.4-bin.zip && rm browsermob-proxy-2.1.4-bin.zip
EXPOSE 9090-9500
CMD /home/browsermob-proxy-2.1.4/bin/browsermob-proxy
