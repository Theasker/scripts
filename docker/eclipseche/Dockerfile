FROM maven:3.2-jdk-7

RUN apt-get update && apt-get -y install git

RUN mkdir che && cd che && curl https://install.codenvycorp.com/sdk/eclipse-che-3.5.0.zip > eclipse-che-3.5.0.zip && unzip eclipse-che-3.5.0.zip && 
cd ..

EXPOSE 8080

CMD ["che/bin/che.sh","run"]
