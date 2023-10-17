drop table if exists streaming.BEtoBIFlow_ofh on cluster company_cluster;

create table if not exists streaming.BEtoBIFlow_ofh on cluster company_cluster (
    data String
) Engine = ReplacingMergeTree()
    ORDER BY (data)
