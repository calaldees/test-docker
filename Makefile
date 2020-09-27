build:
	docker build --tag test .

shell:
	docker run --rm -it test /bin/sh

