FROM alpine:latest
RUN apk update && \
    apk add bash
EXPOSE 1234
COPY app.sh .
CMD bash app.sh 1234
