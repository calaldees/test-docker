FROM python:alpine

RUN apk add --no-cache \
    gcc \
&& true

WORKDIR /app/

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./ ./

#ENTRYPOINT ["python3", "mini.py"]
#CMD ["seb", "is", "cool"]

EXPOSE 8000
CMD ["python3", "-m", "http.server"]
