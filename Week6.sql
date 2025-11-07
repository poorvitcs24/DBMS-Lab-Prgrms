use EmployeeDB;
SELECT m.ENAME, count(*)
FROM EMPLOYEE e,EMPLOYEE m
WHERE e.mgr_no = m.EMPNO
GROUP BY m.ename
HAVING count(*) =(SELECT MAX(mycount)
 from (SELECT COUNT(*) mycount
 FROM EMPLOYEE
 GROUP BY mgr_no) a);
SELECT *
FROM EMPLOYEE m
WHERE m.empno IN
(SELECT mgr_no FROM EMPLOYEE)
AND m.sal > (SELECT avg(e.sal)
FROM EMPLOYEE e WHERE e.mgr_no = m.empno ); 
select *
from EMPLOYEE e, EMPLOYEE m 
where e.mgr_no = m.mgr_no 
  and e.deptno = m.deptno 
  and e.empno in (
    select distinct m.mgr_no 
    from EMPLOYEE e, EMPLOYEE m 
    where e.mgr_no = m.mgr_no 
      and e.deptno = m.deptno
  );
select *
from employee e,incentives i
where e.empno=i.empno and 2 = ( select count(*)
from incentives j
where i.incentive_amount <= j.incentive_amount );
SELECT *
 FROM EMPLOYEE E
 WHERE E.DEPTNO = (SELECT E1.DEPTNO
FROM EMPLOYEE E1
 WHERE E1.EMPNO=E.MGR_NO);
SELECT *
FROM EMPLOYEE E
WHERE E.DEPTNO = (SELECT E1.DEPTNO
FROM EMPLOYEE E1 WHERE E1.EMPNO=E.MGR_NO);