FROM alpine

RUN apk add --no-cache bash tzdata

EXPOSE 8080

EXPOSE 8282
EXPOSE 8383

EXPOSE 9292
EXPOSE 9393

EXPOSE 9494
EXPOSE 9696

WORKDIR /app

COPY dist/topaz*_linux_amd64_v1/topaz* /app/

ENTRYPOINT ["./topazd"]
