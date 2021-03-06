hello:
	echo 'hello'

build:
	go build -o bin/main main.go

run:
	go run main.go

compile:
	GOOS=freebsd GOARCH=amd64 go build -o bin/main-freebsd-amd64 main.go
	GOOS=linux GOARCH=amd64 go build -o bin/main-linux-amd64 main.go
	GOOS=windows GOARCH=amd64 go build -o bin/main-windows-amd64 main.go
	GOOS=darwin GOARCH=amd64 go build -o bin/main-darwin-amd64 main.go

all: compile hello