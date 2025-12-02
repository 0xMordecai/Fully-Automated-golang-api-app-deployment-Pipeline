#   first stage
FROM golang:1.25.4 AS build
WORKDIR /app
COPY go.mod .
COPY main.go .
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags  "-w -X main.docker=true" -o myAPI . && chmod +x ./myAPI

#   second stage
FROM alpine:3.18.0 AS dev
WORKDIR /app
EXPOSE 8888
COPY --from=build /app .
CMD ["./myAPI"]