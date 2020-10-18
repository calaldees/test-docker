FROM python:alpine as base


FROM base as dependencies

    RUN apk add \
        make \
        gcc \
        g++ \
    && true

    COPY requirements.txt ./
    RUN pip3 install -r requirements.txt


FROM base as app
    COPY --from=dependencies \
        /usr/local/lib/python3.9/site-packages/ \
        /usr/local/lib/python3.9/site-packages/

    WORKDIR /test-docker

    ENV FOO=bar

    COPY ./*.py ./

    EXPOSE 9217
    #CMD ["python3", "-m", "http.server", "9217"]
    CMD ["python3", "thing.py"]
