FROM java:7
COPY GoodbyeWorld.java /root/jhw/
WORKDIR /root/jhw
RUN mkdir bin
RUN javac GoodbyeWorld.java
RUN mv GoodbyeWorld.class bin/
ENTRYPOINT ["java","-cp","bin","GoodbyeWorld"]
