## GoCross
cross compiling environments

## Docker:
`docker pull superiss/gocross`

and run:

`docker run --rm -v $(pwd)/:/app gocross env GOOS=linux GOARCH=arm go build -v -o appname ./main.go`

## Examples

# raspberry pi 4  
`docker run --rm -v $(pwd)/:/app gocross env CGO_ENABLED=1 CC=arm-linux-gnueabihf-gcc GOOS=linux GOARCH=arm go build -v -o appname ./main.go`
