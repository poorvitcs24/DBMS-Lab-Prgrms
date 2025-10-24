use 1BM24CS204;
create table person (driver_id varchar(10),
name varchar(20), address varchar(30), primary key(driver_id));
desc person;
create table car(reg_num varchar(10),model varchar(10),year int, primary
key(reg_num));
desc car;
create table accident(report_num int, accident_date date, location
varchar(20),primary key(report_num));
desc accident;
create table owns(driver_id varchar(10),reg_num varchar(10),
primary key(driver_id, reg_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num));
desc owns;
create table participated(driver_id varchar(10), reg_num varchar(10),
report_num int, damage_amount int,
primary key(driver_id, reg_num, report_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num),
foreign key(report_num) references accident(report_num));
desc participated;
insert into person values ('A01', 'Richard', 'Srinivas Nagar');
insert into person values ('A02', 'Pradeep', 'Ashok Nagar');
insert into person values ('A03', 'Smith', 'RR Nagar');
insert into person values ('A04', 'Venu', 'NR Colony');
insert into person values ('A05', 'John', 'MG Road');
insert into car values ('KA057642','Indica',1990);
insert into car values ('KA052345','Indica',1957);
insert into car values ('KA055684','Toyota',1934);
insert into car values ('KA051473','Honda',2004);
insert into car values ('KA057790','Audi',2022);
insert into owns values ('A01','KA052345');
insert into owns values ('A02','KA051473');
insert into owns values ('A03','KA057642');
insert into owns values ('A04','KA055684');
insert into owns values ('A05','KA057790');
insert into accident values (11, '2003-01-01','Mysore Road');
insert into accident values (12,'2004-02-02','South end Circle');
insert into accident values (13,'2003-01-21','Bull temple Road');
insert into accident values (14,'2008-0-18','Mysore Road');
insert into accident values (15,'2004-03-08','Kanakpura Road');
insert into participated values ('A01', 'KA052345', 11, 10000);
insert into participated values ('A02','KA051473',12,50000);
insert into participated values ('A03','KA057642',13,25000);
insert into participated values ('A04','KA055684',14,3000);
insert into participated values ('A05','KA057790',15,5000);
select * from person;
select * from owns;
select * from car;
update participated set damage_amount=25000
where reg_num='KA051473' and report_num=12;
select * from participated;
select driver_id
from PARTICIPATED
where damage_amount >=25000;
insert into accident values (16,'2008-03-08','Domlur');
select * from accident;
select accident_date, location
from ACCIDENT;
select count(distinct driver_id) CNT
from participated a, accident b
where a.report_num=b.report_num and b.accident_date like '__08-%';