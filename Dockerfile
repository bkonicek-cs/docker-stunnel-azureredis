FROM alpine:3.11

COPY entry.sh /

RUN apk add --no-cache stunnel

EXPOSE 6380

ENTRYPOINT [ "/entry.sh" ]