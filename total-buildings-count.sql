select count(*) as total_building_count, sum(area) as total_building_area, block_id 
from buildings as b
group by block_id;
-- Here we grouping building by the block ID
-- Then we use aggregation functions to calculate total 
-- count and total area of building by each block ID 