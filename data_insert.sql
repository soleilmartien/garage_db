-- New script in etpsjmkn.
-- Date: Jan. 31, 2023
-- Time: 10:22:54 p.m.

create table parts_order(
	order_id SERIAL primary key,
	order_time TIME,
	order_date DATE,
	seller VARCHAR(150),
	order_cost NUMERIC(8,2),
	foreign key(ticket_id) references service_ticket(ticket_id)
	
);

create table order_item(
	item_id SERIAL primary key,
	order_id INTEGER,
	item_name VARCHAR(200),
	unitary_price NUMERIC(7,2),
	amount NUMERIC(4),
	total_price  NUMERIC(9,2),
	foreign key(order_id) references parts_order(order_id)
)

create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	seniority DATE
)

create table car(
	car_serial SERIAL primary key,
	car_model VARCHAR(150)
)

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
)

create table invoice(
	invoice_id SERIAL primary key,
	car_serial INTEGER,
	salesperson_id INTEGER,
	invoice_date DATE,
	invoice_time TIME,
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(car_serial) references car(car_serial)
)

create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	seniority DATE
)

create table service_ticket (
	ticket_id SERIAL primary key,
	ticket_issue_time TIME,
	ticket_issue_date DATE,
	customer_id INTEGER,
	mechanic_id INTEGER,
	car_serial INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_serial) references car(car_serial),
	foreign key(mechanic_id) references mechanic(mechanic_id)
)


	

