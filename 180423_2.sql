SQL> select last_name, job_id, salary
  2  from employees
  3  where job_id = (select job_id
  4  from employees
  5  where last_name = 'Taylor')
  6  and salary > (select salary
  7  from employees
  8  where last_name = 'Taylor');
where job_id = (select job_id
                *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> l
  1  select last_name, job_id, salary
  2  from employees
  3  where job_id = (select job_id
  4  from employees
  5  where last_name = 'Taylor')
  6  and salary > (select salary
  7  from employees
  8* where last_name = 'Taylor')
SQL> ed
Wrote file afiedt.buf

  1  select last_name, job_id, salary
  2  from employees
  3  where job_id = (select job_id
  4  from employees
  5  where last_name = 'Taylor')
  6  and salary > (select salary
  7  from employees
  8* where last_name = 'Taylor')
SQL> /
where job_id = (select job_id
                *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> spool off
