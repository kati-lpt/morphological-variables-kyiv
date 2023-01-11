select 
	non_residential_building_count,
	cast(non_residential_building_count  as real) / cast(total_building_count as real) as percent_non_residential /*:real*/,
	residential_building_count, 
	cast(residential_building_count as real)/ cast(total_building_count as real) as percent_residential/*:real*/, 
	total_building_count, 
	t.block_id
from 
	non_residential_building_count as n,
	residential_building_count as r, 
	total_building_count as t
where n.block_id=r.block_id and n.block_id=t.block_id
	;