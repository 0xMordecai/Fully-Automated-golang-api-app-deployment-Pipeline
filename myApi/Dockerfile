#   first stage
FROM golang:1.25.4 AS build
WORKDIR /app
COPY go.mod .
COPY main.go .
RUN go mod tidy
RUN GO111MODULE=off GOOS=linux go build -a installsuffix cgo -o myAPI . && chmod +x ./myAPI

#   second stage
FROM alpine:3.19.6 AS dev
WORKDIR /app
COPY --from=build /app .
CMD ["./myAPI"]