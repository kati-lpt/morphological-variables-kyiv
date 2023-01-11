select count(*) as street_intersection_count, id as block_id
from street_intersection
where id is not null
group by id;
-- This calculation helps us define the number of street intersections within each block ID  
-- We were not using this parameter for research purposes as we find it irrelevant for the microrayons sizes. 
-- As microrayons can also be seen as superblocks, there is a limited number of street interactions within them
-- so it doesn't reflect the data that could be useful for the comparison  
-- Street intersection points were generated in QGIS 
-- through the Processing Toolbox - the Vector overlay ‣ Line intersections algorithm