use 1BM24CS204;

select * from car order by year asc;
select count(report_num) CNT from car c,participated p where c.reg_num=p.reg_num and
model="Indica";
select count(distinct driver_id) CNT from participated a, accident b where a.report_num=
b.report_num and b.accident_date like '__08-%';
SELECT * FROM participated ORDER BY damage_amount DESC;
SELECT AVG(damage_amount) FROM participated;
DELETE FROM participated WHERE damage_amount < (SELECT AVG(damage_amount) FROM participated);
SELECT NAME FROM person A, participated B WHERE A.driver_id = B.driver_id
AND damage_amount > (SELECT AVG(damage_amount) FROM participated);
SELECT MAX(damage_amount) FROM participated;