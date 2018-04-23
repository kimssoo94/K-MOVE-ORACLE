SQL> select salary
  2  from employees
  3  where job_id = 'IT_PROG';

    SALARY                                                                      
----------                                                                      
      9000                                                                      
      6000                                                                      
      4800                                                                      
      4800                                                                      
      4200                                                                      

SQL> select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary < (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6  and job_id <> 'IT_PROG';
where salary < (select salary
                *
ERROR at line 3:
ORA-01427: single-row subquery returns more than one row 


SQL> cd
SP2-0042: unknown command "cd" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary < ANY (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6* and job_id <> 'IT_PROG'
SQL> /

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        132 Olson                     ST_CLERK         2100                     
        136 Philtanker                ST_CLERK         2200                     
        128 Markle                    ST_CLERK         2200                     
        135 Gee                       ST_CLERK         2400                     
        127 Landry                    ST_CLERK         2400                     
        119 Colmenares                PU_CLERK         2500                     
        191 Perkins                   SH_CLERK         2500                     
        182 Sullivan                  SH_CLERK         2500                     
        144 Vargas                    ST_CLERK         2500                     
        140 Patel                     ST_CLERK         2500                     
        131 Marlow                    ST_CLERK         2500                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        143 Matos                     ST_CLERK         2600                     
        118 Himuro                    PU_CLERK         2600                     
        198 OConnell                  SH_CLERK         2600                     
        199 Grant                     SH_CLERK         2600                     
        126 Mikkilineni               ST_CLERK         2700                     
        139 Seo                       ST_CLERK         2700                     
        183 Geoni                     SH_CLERK         2800                     
        195 Jones                     SH_CLERK         2800                     
        130 Atkinson                  ST_CLERK         2800                     
        117 Tobias                    PU_CLERK         2800                     
        134 Rogers                    ST_CLERK         2900                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        116 Baida                     PU_CLERK         2900                     
        190 Gates                     SH_CLERK         2900                     
        187 Cabrio                    SH_CLERK         3000                     
        197 Feeney                    SH_CLERK         3000                     
        115 Khoo                      PU_CLERK         3100                     
        196 Walsh                     SH_CLERK         3100                     
        142 Davies                    ST_CLERK         3100                     
        181 Fleaur                    SH_CLERK         3100                     
        194 McCain                    SH_CLERK         3200                     
        138 Stiles                    ST_CLERK         3200                     
        125 Nayer                     ST_CLERK         3200                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        180 Taylor                    SH_CLERK         3200                     
        133 Mallin                    ST_CLERK         3300                     
        129 Bissot                    ST_CLERK         3300                     
        186 Dellinger                 SH_CLERK         3400                     
        141 Rajs                      ST_CLERK         3500                     
        189 Dilly                     SH_CLERK         3600                     
        137 Ladwig                    ST_CLERK         3600                     
        188 Chung                     SH_CLERK         3800                     
        193 Everett                   SH_CLERK         3900                     
        192 Bell                      SH_CLERK         4000                     
        185 Bull                      SH_CLERK         4100                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        184 Sarchand                  SH_CLERK         4200                     
        200 Whalen                    AD_ASST          4400                     
        124 Mourgos                   ST_MAN           5800                     
        202 Fay                       MK_REP           6000                     
        173 Kumar                     SA_REP           6100                     
        179 Johnson                   SA_REP           6200                     
        167 Banda                     SA_REP           6200                     
        166 Ande                      SA_REP           6400                     
        123 Vollman                   ST_MAN           6500                     
        203 Mavris                    HR_REP           6500                     
        165 Lee                       SA_REP           6800                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        113 Popp                      FI_ACCOUNT       6900                     
        178 Grant                     SA_REP           7000                     
        161 Sewall                    SA_REP           7000                     
        155 Tuvault                   SA_REP           7000                     
        164 Marvins                   SA_REP           7200                     
        172 Bates                     SA_REP           7300                     
        171 Smith                     SA_REP           7400                     
        160 Doran                     SA_REP           7500                     
        154 Cambrault                 SA_REP           7500                     
        111 Sciarra                   FI_ACCOUNT       7700                     
        112 Urman                     FI_ACCOUNT       7800                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        122 Kaufling                  ST_MAN           7900                     
        159 Smith                     SA_REP           8000                     
        120 Weiss                     ST_MAN           8000                     
        153 Olsen                     SA_REP           8000                     
        121 Fripp                     ST_MAN           8200                     
        110 Chen                      FI_ACCOUNT       8200                     
        206 Gietz                     AC_ACCOUNT       8300                     
        177 Livingston                SA_REP           8400                     
        176 Taylor                    SA_REP           8600                     
        175 Hutton                    SA_REP           8800                     

76 rows selected.

SQL> l
  1  select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary < ANY (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6* and job_id <> 'IT_PROG'
SQL> ed
Wrote file afiedt.buf

  1  select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary > ANY (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6* and job_id <> 'IT_PROG'
SQL> /

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        100 King                      AD_PRES         24000                     
        101 Kochhar                   AD_VP           17000                     
        102 De Haan                   AD_VP           17000                     
        145 Russell                   SA_MAN          14000                     
        146 Partners                  SA_MAN          13500                     
        201 Hartstein                 MK_MAN          13000                     
        205 Higgins                   AC_MGR          12008                     
        108 Greenberg                 FI_MGR          12008                     
        147 Errazuriz                 SA_MAN          12000                     
        168 Ozer                      SA_REP          11500                     
        148 Cambrault                 SA_MAN          11000                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        174 Abel                      SA_REP          11000                     
        114 Raphaely                  PU_MAN          11000                     
        162 Vishney                   SA_REP          10500                     
        149 Zlotkey                   SA_MAN          10500                     
        169 Bloom                     SA_REP          10000                     
        156 King                      SA_REP          10000                     
        150 Tucker                    SA_REP          10000                     
        204 Baer                      PR_REP          10000                     
        170 Fox                       SA_REP           9600                     
        151 Bernstein                 SA_REP           9500                     
        163 Greene                    SA_REP           9500                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        157 Sully                     SA_REP           9500                     
        109 Faviet                    FI_ACCOUNT       9000                     
        158 McEwen                    SA_REP           9000                     
        152 Hall                      SA_REP           9000                     
        175 Hutton                    SA_REP           8800                     
        176 Taylor                    SA_REP           8600                     
        177 Livingston                SA_REP           8400                     
        206 Gietz                     AC_ACCOUNT       8300                     
        110 Chen                      FI_ACCOUNT       8200                     
        121 Fripp                     ST_MAN           8200                     
        120 Weiss                     ST_MAN           8000                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        153 Olsen                     SA_REP           8000                     
        159 Smith                     SA_REP           8000                     
        122 Kaufling                  ST_MAN           7900                     
        112 Urman                     FI_ACCOUNT       7800                     
        111 Sciarra                   FI_ACCOUNT       7700                     
        160 Doran                     SA_REP           7500                     
        154 Cambrault                 SA_REP           7500                     
        171 Smith                     SA_REP           7400                     
        172 Bates                     SA_REP           7300                     
        164 Marvins                   SA_REP           7200                     
        178 Grant                     SA_REP           7000                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        161 Sewall                    SA_REP           7000                     
        155 Tuvault                   SA_REP           7000                     
        113 Popp                      FI_ACCOUNT       6900                     
        165 Lee                       SA_REP           6800                     
        123 Vollman                   ST_MAN           6500                     
        203 Mavris                    HR_REP           6500                     
        166 Ande                      SA_REP           6400                     
        179 Johnson                   SA_REP           6200                     
        167 Banda                     SA_REP           6200                     
        173 Kumar                     SA_REP           6100                     
        202 Fay                       MK_REP           6000                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        124 Mourgos                   ST_MAN           5800                     
        200 Whalen                    AD_ASST          4400                     

57 rows selected.

SQL> l
  1  select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary > ANY (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6* and job_id <> 'IT_PROG'
SQL> ed
Wrote file afiedt.buf

  1  select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary < ALL (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6* and job_id <> 'IT_PROG'
SQL> /

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        185 Bull                      SH_CLERK         4100                     
        192 Bell                      SH_CLERK         4000                     
        193 Everett                   SH_CLERK         3900                     
        188 Chung                     SH_CLERK         3800                     
        137 Ladwig                    ST_CLERK         3600                     
        189 Dilly                     SH_CLERK         3600                     
        141 Rajs                      ST_CLERK         3500                     
        186 Dellinger                 SH_CLERK         3400                     
        133 Mallin                    ST_CLERK         3300                     
        129 Bissot                    ST_CLERK         3300                     
        180 Taylor                    SH_CLERK         3200                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        125 Nayer                     ST_CLERK         3200                     
        138 Stiles                    ST_CLERK         3200                     
        194 McCain                    SH_CLERK         3200                     
        115 Khoo                      PU_CLERK         3100                     
        142 Davies                    ST_CLERK         3100                     
        196 Walsh                     SH_CLERK         3100                     
        181 Fleaur                    SH_CLERK         3100                     
        187 Cabrio                    SH_CLERK         3000                     
        197 Feeney                    SH_CLERK         3000                     
        116 Baida                     PU_CLERK         2900                     
        190 Gates                     SH_CLERK         2900                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        134 Rogers                    ST_CLERK         2900                     
        195 Jones                     SH_CLERK         2800                     
        183 Geoni                     SH_CLERK         2800                     
        117 Tobias                    PU_CLERK         2800                     
        130 Atkinson                  ST_CLERK         2800                     
        139 Seo                       ST_CLERK         2700                     
        126 Mikkilineni               ST_CLERK         2700                     
        118 Himuro                    PU_CLERK         2600                     
        199 Grant                     SH_CLERK         2600                     
        143 Matos                     ST_CLERK         2600                     
        198 OConnell                  SH_CLERK         2600                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        131 Marlow                    ST_CLERK         2500                     
        119 Colmenares                PU_CLERK         2500                     
        191 Perkins                   SH_CLERK         2500                     
        182 Sullivan                  SH_CLERK         2500                     
        144 Vargas                    ST_CLERK         2500                     
        140 Patel                     ST_CLERK         2500                     
        127 Landry                    ST_CLERK         2400                     
        135 Gee                       ST_CLERK         2400                     
        128 Markle                    ST_CLERK         2200                     
        136 Philtanker                ST_CLERK         2200                     
        132 Olson                     ST_CLERK         2100                     

44 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id, last_name, job_id, salary
  2  from employees
  3  where salary > ALL (select salary
  4  from employees
  5  where job_id = 'IT_PROG')
  6* and job_id <> 'IT_PROG'
SQL> /

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        157 Sully                     SA_REP           9500                     
        151 Bernstein                 SA_REP           9500                     
        163 Greene                    SA_REP           9500                     
        170 Fox                       SA_REP           9600                     
        204 Baer                      PR_REP          10000                     
        169 Bloom                     SA_REP          10000                     
        156 King                      SA_REP          10000                     
        150 Tucker                    SA_REP          10000                     
        162 Vishney                   SA_REP          10500                     
        149 Zlotkey                   SA_MAN          10500                     
        148 Cambrault                 SA_MAN          11000                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        174 Abel                      SA_REP          11000                     
        114 Raphaely                  PU_MAN          11000                     
        168 Ozer                      SA_REP          11500                     
        147 Errazuriz                 SA_MAN          12000                     
        108 Greenberg                 FI_MGR          12008                     
        205 Higgins                   AC_MGR          12008                     
        201 Hartstein                 MK_MAN          13000                     
        146 Partners                  SA_MAN          13500                     
        145 Russell                   SA_MAN          14000                     
        102 De Haan                   AD_VP           17000                     
        101 Kochhar                   AD_VP           17000                     

EMPLOYEE_ID LAST_NAME                 JOB_ID         SALARY                     
----------- ------------------------- ---------- ----------                     
        100 King                      AD_PRES         24000                     

23 rows selected.

SQL> spool off
