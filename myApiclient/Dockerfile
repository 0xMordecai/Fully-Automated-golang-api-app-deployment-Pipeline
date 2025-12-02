# first stage
From golang:1.25.4 As build
WORKDIR /app
COPY go.mod .
COPY main.go .
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags  "-w -X main.docker=true" -o myClientAPI . && chmod +x ./myClientAPI

#   second stage
FROM alpine:3.19.6 AS dev
WORKDIR /app
COPY --from=build /app .
CMD ["./myClientAPI"] Privacy 