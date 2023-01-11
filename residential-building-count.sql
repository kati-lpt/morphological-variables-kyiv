select count(*) as residential_building_count, block_id
from buildings as b
where building='house' 
	or building='residential' 
	or building='apartments'
	or building='detached'
	or building='dormitory'
	or building='semidetached_house'
	or building='terrace'
group by block_id;