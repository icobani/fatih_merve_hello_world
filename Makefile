deploy:
	echo "Compiling....."
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags "-w -s" -a -installsuffix cgo -o api
	echo "Deleting unused images"
	docker system prune --force
	echo "compile docker image"
	docker build -t icobani/api.fatih_merve_hello_world .
	echo "pushing..."
	docker push icobani/api.fatih_merve_hello_world
	rm api