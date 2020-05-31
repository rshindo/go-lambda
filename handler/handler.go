package handler

import "context"

func HandleEvent(ctx context.Context) (string, error) {
	return "Hello, World!", nil
}
