create table Empmng(
	emp_name varchar(40),
	emp_id int,
	mng_name varchar(40),
	mng_id int
);

insert into Empmng (emp_name,emp_id,mng_name,mng_id) values ('Keren', 456, 'Dani', 333);
insert into Empmng (emp_name,emp_id,mng_name,mng_id) values ('Sharon', 789, 'Keren', 456);
insert into Empmng (emp_name,emp_id,mng_name,mng_id) values ('Avi', 999, 'Sharon', 789);
insert into Empmng (emp_name,emp_id,mng_name,mng_id) values ('Noa', 123, 'Avi', 999)


Solution:
with recursive tempa AS (
  SELECT emp_name,
  emp_id,
  mng_id,
  1 AS Levela
  FROM D
  where mng_id is null

  UNION ALL

  SELECT
  D.emp_name,
  D.emp_id,
  D.mng_id,
  Levela+1
  from D  inner join tempa
  on
  D.mng_id=tempa.emp_id
),


A as
(
select
emp_name,
emp_id,
mng_id
from Empmng
Union all
select
mng_name,
mng_id,
mng_id
from Empmng
),

B as
(
  select emp_name,
  emp_id,
  mng_id,
  count(emp_name) over (partition by emp_id) as num_of_records
  from A
  ),
 
 C as (
  select
  emp_name,
  emp_id,
  mng_id
  from B
  where ((num_of_records=2 and emp_id<>mng_id)
  or num_of_records=1)),
 
D as
  (
    select emp_name,
    emp_id,
    case when emp_id=mng_id then NULL else mng_id end as mng_id
    from C
   
    ),

   E as
 (
  select
   emp.emp_name as Employee_Name,
   DirectBoss.emp_name as Direct_Manager_Name
   from tempa emp join tempa DirectBoss
   on emp.mng_id = DirectBoss.emp_id
   where emp.Levela=4
   --right join D Biggest
   --on emp.emp_id=Biggest.emp_id
   --where Biggest.mng_id is null and emp.Levela=4 
  )
  

    select Employee_Name, Direct_Manager_Name,
   (select D.emp_name as "CEO" from D where D.mng_id is null)
    from E
