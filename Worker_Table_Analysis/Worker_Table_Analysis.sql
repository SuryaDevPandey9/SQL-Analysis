SELECT FIRST_NAME FROM worker as WORKER_NAME;


select upper(FIRST_NAME) FROM worker ;


select distinct DEPARTMENT FROM worker;


select LEFT(FIRST_NAME,3) FROM worker;
select substring(FIRST_NAME,1,3) FROM worker;


select distinct DEPARTMENT, length(DEPARTMENT) AS DEP_NAME_LENGTH FROM worker;


select concat(FIRST_NAME ," ", LAST_NAME)  AS COMPLETE_NAME FROM worker;


select * FROM worker
where FIRST_NAME IN ("Vipul","Satish");


select * from worker
order by FIRST_NAME asc, DEPARTMENT desc;


select * FROM worker
where FIRST_NAME like "%a%a";



select * FROM worker
where FIRST_NAME like "_____h";


select * from worker
where SALARY between 100000 and 500000;


select * from worker
where JOINING_DATE like "2014-02%";


select DEPARTMENT , count(*) AS NUM_OF_EMPLOYEE FROM WORKER
group by DEPARTMENT order by NUM_OF_EMPLOYEE desc;


select DEPARTMENT, COUNT(*) FROM WORKER
group by DEPARTMENT HAVING COUNT(*)>1;


select WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,AFFECTED_FROM,DEPARTMENT,WORKER_TITLE FROM worker
inner JOIN title
ON worker.WORKER_ID = title.WORKER_REF_ID
where WORKER_TITLE = "Manager";
 
 
 select * from worker
 order by SALARY desc limit 10;
 
 
 select * from worker where SALARY in 
 ( select SALARY from worker group by SALARY having  count(*)>1 )
 order by SALARY;
 
 
select a.* from worker AS a, worker AS b where a.SALARY = b.SALARY AND a.WORKER_ID != b.WORKER_ID order by SALARY;

 
 select DEPARTMENT, count(DEPARTMENT) as num_less_than_5 from worker
 group by DEPARTMENT HAVING count(*)<5;
 
 
 select DEPARTMENT, SUM(SALARY) as TOTAL_SALARY from worker
 group by DEPARTMENT;
 
 
SELECT WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT,WORKER_TITLE FROM WORKER
FULL JOIN TITLE
ON WORKER_ID = WORKER_REF_ID
ORDER BY WORKER_ID;