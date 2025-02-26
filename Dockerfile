FROM ubuntu:latest
COPY calculator.sh /app/calculator.sh
WORKDIR /app
RUN chmod +x calculator.sh
CMD ["/bin/bash", "calculator.sh"]