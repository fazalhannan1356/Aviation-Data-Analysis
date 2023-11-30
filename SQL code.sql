--select sum(events.inj_tot_f) as total_fatal_injuries, 
--count(events.ev_id) as event_count, events.ev_year 
--from events 
--join aircraft on events.ev_id = aircraft.ev_id
--group by ev_year order by ev_year;
with cities as
(select count(*) as events_count, ev_city 
from events group by ev_city) select count(ev_city) from  cities 


--select count(*) as aircraft_count, aircraft.acft_category 
--from events join aircraft on events.ev_id = aircraft.ev_id
--where acft_category <> '' 
--group by acft_category order by aircraft_count desc;

--select count(*) as aircraft_count, aircraft.acft_expl
--from events join aircraft on events.ev_id = aircraft.ev_id
--where acft_expl <> '' 
--group by acft_expl order by aircraft_count desc;

--select aircraft.acft_category, aircraft.acft_make 
--from events join aircraft on events.ev_id = aircraft.ev_id
--where acft_expl <> 'IFLT' ;

--select count(events.ev_id) as event_count, engines.carb_fuel_injection
--from events 
--join aircraft on events.ev_id = aircraft.ev_id
--join engines on events.ev_id = engines.ev_id
--group by engines.carb_fuel_injection order by event_count desc;

--select count(events.ev_id) as event_count, engines.eng_type
--from events 
--join aircraft on events.ev_id = aircraft.ev_id
--join engines on events.ev_id = engines.ev_id

--group by engines.eng_type order by event_count desc;

--select count(events.ev_city) as event_count, events.ev_city
--from events 
--join aircraft on events.ev_id = aircraft.ev_id
--join engines on events.ev_id = engines.ev_id
--where acft_category = 'AIR' 
--and events.mid_air = 1 
--and events.ev_country <> 'USA'
--group by events.ev_city order by event_count desc;








