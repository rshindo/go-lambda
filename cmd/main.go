package main

import (
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/rshindo/go-lambda/handler"
)

func main() {
	lambda.Start(handler.HandleEvent)
}
