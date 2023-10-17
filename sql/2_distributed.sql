drop table if exists streaming.BEtoBIFlow_dist on cluster company_cluster;
create table if not exists streaming.BEtoBIFlow_dist on cluster company_cluster (
    data String
) Engine = Distributed('company_cluster', 'streaming', 'BEtoBIFlow_ofh', rand())
settings
    fsync_after_insert=0,
    fsync_directories=0;