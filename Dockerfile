FROM python:alpine as base

WORKDIR /test-docker

ENV FOO=bar

COPY requirements.txt ./
RUN pip3 install -r requirements.txt

EXPOSE 9217
CMD ["python3", "-m", "http.server", "9217"]
