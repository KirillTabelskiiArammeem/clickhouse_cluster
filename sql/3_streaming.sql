
drop table if exists streaming.BEtoBIFlow on cluster company_cluster;

create table streaming.BEtoBIFlow (
    data String
) ENGINE = Kafka() settings
    kafka_broker_list ='broker:9092',
    kafka_topic_list = 'test2',
    kafka_group_name = 'clickhouse_stg',
    kafka_format = 'JSONEachRow',
    kafka_num_consumers = 1;