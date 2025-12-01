# first stage
From golang:1.25.4 As build
WORKDIR /app
COPY go.mod .
COPY main.go .
RUN go mod tidy
RUN GO111MODULE=off GOOS=linux go build -a installsuffix cgo -o myClientAPI . && chmod +x ./myClientAPI