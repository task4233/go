build:
	docker build -t go-workspace .

run:
	docker run --rm -v ./:/app/ -it go-workspace /bin/bash
