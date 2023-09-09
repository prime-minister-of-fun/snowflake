select COUNTIES.gid,COUNTIES."name" as stranded_county,
COUNTY_TOWED."name" as towed_to_county,
round(st_distance(OF1.GEO_VEHICLE_POINT, OF1.GEO_TOWED_POINT)/1000 , 2) as distance_towed_KM,
OF1.vehicle_make,OF1.VEHICLE_MODEL
from COUNTIES
inner join OUT_OF_CHARGE_FIXED as OF1 ON
 (select st_within(OF1.GEO_VEHICLE_POINT, COUNTIES.geom)) = true
inner join COUNTIES as COUNTY_TOWED ON
 (select st_within(OF1.GEO_TOWED_POINT, COUNTY_TOWED.geom)) = true

