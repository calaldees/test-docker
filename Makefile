build:
	docker build --tag test .

shell:
	docker run --rm -it test /bin/sh

run:
	docker run --rm -it --publish 8000:9217 test
