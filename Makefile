
APP_NAME=go-app-template
BUILD_PATH=$(shell echo $$(pwd)/build/$(APP_NAME))

initmod:
	go mod init github.com/karuta0825/$(APP_NAME)

fmt:
	go fmt ./...

lint:
	go vet ./...

.PHONY: test
test: fmt lint
	mkdir -p coverage
	gotest  -v -coverprofile=coverage/cover.out ./...
	go tool cover -html=coverage/cover.out -o coverage/cover.html

.PHONY: build
build: test
	go build -o $(BUILD_PATH)

run:
	go run $(shell ls *.go | grep -v *_test.go)
