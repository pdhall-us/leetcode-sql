select max(num) as num
from (select num, count(*) as num_count
from mynumbers
group by num
having count(*)=1) as mynum_1;