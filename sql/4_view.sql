drop view if exists streaming.BEtoBIFlow_ofh_mv on cluster company_cluster;


create materialized view streaming.BEtoBIFlow_ofh_mv  to streaming.BEtoBIFlow_dist
as
select
    data as data
from streaming.BEtoBIFlow
