-- New script in etpsjmkn.
-- Date: Feb. 1, 2023
-- Time: 8:25:31 p.m.


--data insertion functions
create function add_cars(_car_serial INTEGER, _car_model VARCHAR)
returns void
as $MAIN$
begin 
		insert into car(car_serial,car_model)
		values (_car_serial, _car_model);
end;
$MAIN$
language plpgsql;

select add_cars(3,'2009 Toyota Corolla');
select add_cars(4,'2020 Ford F150');
select add_cars(5,'2016 Honda Civic');
select * from car;



--manual data insertion example
insert into car(car_serial,car_model) values (1, '2009 Beige Pontiac Montana');
