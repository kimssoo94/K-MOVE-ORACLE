SQL> /

    SALARY                                                                      
----------                                                                      
     11000                                                                      

SQL> select last_name
  2  from employees
  3  where salary > 11000;

LAST_NAME                                                                       
-------------------------                                                       
Hartstein                                                                       
Higgins                                                                         
King                                                                            
Kochhar                                                                         
De Haan                                                                         
Greenberg                                                                       
Russell                                                                         
Partners                                                                        
Errazuriz                                                                       
Ozer                                                                            

10 rows selected.

SQL> select last_name, salary
  2  from employees
  3  where salary > (select salary
  4  from employees
  5  where last_name = 'Abel');

LAST_NAME                     SALARY                                            
------------------------- ----------                                            
Hartstein                      13000                                            
Higgins                        12008                                            
King                           24000                                            
Kochhar                        17000                                            
De Haan                        17000                                            
Greenberg                      12008                                            
Russell                        14000                                            
Partners                       13500                                            
Errazuriz                      12000                                            
Ozer                           11500                                            

10 rows selected.

SQL> spool off
