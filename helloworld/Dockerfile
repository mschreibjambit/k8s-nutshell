#############
# Build
#############
FROM k8snutshell.azurecr.io/golang:alpine as build

WORKDIR /app

COPY . /app

RUN go build -o /usr/bin/helloworld

CMD ["/usr/bin/helloworld"]


#############
# Release
#############
FROM k8snutshell.azurecr.io/alpine:latest as release

RUN addgroup -g 1000 golang; \
    adduser -H -s /bin/false -u 1000 -G golang -S -D golang

COPY --from=build /usr/bin/helloworld /usr/bin

EXPOSE 8080

CMD ["/usr/bin/helloworld"]
