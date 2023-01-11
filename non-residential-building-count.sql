select count(*) as non_residential_building_count, block_id
from buildings as b
where not (
	building='house' 
	or building='residential' 
	or building='apartments'
	or building='detached'
	or building='dormitory'
	or building='semidetached_house'
	or building='terrace'
)
group by block_id;