deps:
		dep ensure

build:
		GOOS=linux GOARCH=amd64 go build -ldflags "-X main.version=$(VERSION)" -o bin/yatteiki-stern main.go

refresh: build
		docker image build -t yatteiki/stern:latest .
