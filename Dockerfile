FROM debian:jessie

ADD install.sh install.sh
RUN chmod +x install.sh && ./install.sh && rm install.sh

EXPOSE 11300
CMD ["beanstalkd", "-p", "11300"]

