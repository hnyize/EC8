FROM alpine
RUN mkdir -p /root/ecology
RUN apk update
RUN apk add openjdk8
COPY ./resin /root/resin/
CMD /root/resin/start.sh
