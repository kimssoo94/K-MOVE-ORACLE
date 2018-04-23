SQL> select last_name, job_id, salary
  2  from employees
  3  where salary = (select min(salary)
  4  from employees);

LAST_NAME                 JOB_ID         SALARY                                 
------------------------- ---------- ----------                                 
Olson                     ST_CLERK         2100                                 

SQL> select department_id, min(salary)
  2  from employees
  3  group by department_id
  4  having min(salary) > (select min(salary)
  5  from employees
  6  where department_id = 50);

DEPARTMENT_ID MIN(SALARY)                                                       
------------- -----------                                                       
          100        6900                                                       
           30        2500                                                       
                     7000                                                       
           20        6000                                                       
           70       10000                                                       
           90       17000                                                       
          110        8300                                                       
           40        6500                                                       
           80        6100                                                       
           10        4400                                                       
           60        4200                                                       

11 rows selected.

SQL> select employee_id, last_name
  2  from employees
  3  where salary in (select min(salary)
  4  from employees
  5  group by department_id);

EMPLOYEE_ID LAST_NAME                                                           
----------- -------------------------                                           
        200 Whalen                                                              
        202 Fay                                                                 
        203 Mavris                                                              
        204 Baer                                                                
        206 Gietz                                                               
        101 Kochhar                                                             
        102 De Haan                                                             
        104 Ernst                                                               
        107 Lorentz                                                             
        113 Popp                                                                
        119 Colmenares                                                          

EMPLOYEE_ID LAST_NAME                                                           
----------- -------------------------                                           
        123 Vollman                                                             
        131 Marlow                                                              
        132 Olson                                                               
        140 Patel                                                               
        144 Vargas                                                              
        150 Tucker                                                              
        155 Tuvault                                                             
        156 King                                                                
        161 Sewall                                                              
        169 Bloom                                                               
        173 Kumar                                                               

EMPLOYEE_ID LAST_NAME                                                           
----------- -------------------------                                           
        178 Grant                                                               
        182 Sullivan                                                            
        184 Sarchand                                                            
        191 Perkins                                                             

26 rows selected.

SQL> spool off
