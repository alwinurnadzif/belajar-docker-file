FROM golang:1.23-alpine 

RUN addgroup -S developer && adduser -S developer -G developer 

RUN mkdir -p /app && chown -R developer:developer /app 

USER developer 

WORKDIR /app 

COPY main.go /app 

CMD go run main.go
