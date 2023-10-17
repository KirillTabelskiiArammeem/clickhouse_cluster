FROM python:3.10.13-bullseye
COPY put_to_kafka/requirements.txt /
COPY put_to_kafka/put_to_kafka.py /

RUN
RUN set -ex && \
    apt update && \
    apt install -y python3-dev  librdkafka-dev gcc musl-dev
RUN pip install -r /requirements.txt  --upgrade pip
CMD ["python", "/put_to_kafka.py"]
