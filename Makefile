.PHONY: build clean deploy gomodgen

build: gomodgen
	export GO111MODULE=on
	go get -v -t -d ./...
	env GOOS=linux go build -ldflags="-s -w" -o bin/hello cmd/main.go

clean:
	rm -rf ./bin ./vendor Gopkg.lock

deploy: clean build
	sls deploy --verbose

gomodgen:
	chmod u+x gomod.sh
	./gomod.sh
