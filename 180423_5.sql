SQL> select * f
  2  rom departments
  3  where not exists
  4  (select * from employees
  5  where employees.department_id=department.department_id);
select * f
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  select * from departments
  2  where not exists
  3  (select * from employees
  4* where employees.department_id=department.department_id)
SQL> /
where employees.department_id=department.department_id)
                              *
ERROR at line 4:
ORA-00904: "DEPARTMENT"."DEPARTMENT_ID": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select * from departments
  2  where not exists
  3  (select * from employees
  4* where employees.department_id=departments.department_id)
SQL> /

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          120 Treasury                                         1700             
          130 Corporate Tax                                    1700             
          140 Control And Credit                               1700             
          150 Shareholder Services                             1700             
          160 Benefits                                         1700             
          170 Manufacturing                                    1700             
          180 Construction                                     1700             
          190 Contracting                                      1700             
          200 Operations                                       1700             
          210 IT Support                                       1700             
          220 NOC                                              1700             

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          230 IT Helpdesk                                      1700             
          240 Government Sales                                 1700             
          250 Retail Sales                                     1700             
          260 Recruiting                                       1700             
          270 Payroll                                          1700             

16 rows selected.

SQL> desc;
Usage: DESCRIBE [schema.]object[@db_link]
SQL> /

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          120 Treasury                                         1700             
          130 Corporate Tax                                    1700             
          140 Control And Credit                               1700             
          150 Shareholder Services                             1700             
          160 Benefits                                         1700             
          170 Manufacturing                                    1700             
          180 Construction                                     1700             
          190 Contracting                                      1700             
          200 Operations                                       1700             
          210 IT Support                                       1700             
          220 NOC                                              1700             

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          230 IT Helpdesk                                      1700             
          240 Government Sales                                 1700             
          250 Retail Sales                                     1700             
          260 Recruiting                                       1700             
          270 Payroll                                          1700             

16 rows selected.

SQL> l
  1  select * from departments
  2  where not exists
  3  (select * from employees
  4* where employees.department_id=departments.department_id)
SQL> ed
Wrote file afiedt.buf

  1  select * from departments
  2  where exists
  3  (select * from employees
  4* where employees.department_id=departments.department_id)
SQL> /

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
           10 Administration                        200        1700             
           20 Marketing                             201        1800             
           30 Purchasing                            114        1700             
           40 Human Resources                       203        2400             
           50 Shipping                              121        1500             
           60 IT                                    103        1400             
           70 Public Relations                      204        2700             
           80 Sales                                 145        2500             
           90 Executive                             100        1700             
          100 Finance                               108        1700             
          110 Accounting                            205        1700             

11 rows selected.

SQL> spool off
