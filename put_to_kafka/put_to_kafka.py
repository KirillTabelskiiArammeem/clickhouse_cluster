import uuid
from confluent_kafka import Producer
import json
def generate_message():

    return json.dumps({
        'data': str(uuid.uuid4())
    })


def main():
    producer = Producer({'bootstrap.servers': 'broker:9092'})
    for _ in range(10000):
        producer.produce('test2', value=generate_message())
        producer.flush()


if __name__ == '__main__':
    main()