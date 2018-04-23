SQL> select employee_id, job_id
  2  from employees
  3  intersect
  4  select employee_id, job_id
  5  from job_history;

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        176 SA_REP                                                              
        200 AD_ASST                                                             

SQL> select employee_id
  2  from employees
  3  minus
  4  select employee_id
  5  from job_history;

EMPLOYEE_ID                                                                     
-----------                                                                     
        100                                                                     
        103                                                                     
        104                                                                     
        105                                                                     
        106                                                                     
        107                                                                     
        108                                                                     
        109                                                                     
        110                                                                     
        111                                                                     
        112                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        113                                                                     
        115                                                                     
        116                                                                     
        117                                                                     
        118                                                                     
        119                                                                     
        120                                                                     
        121                                                                     
        123                                                                     
        124                                                                     
        125                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        126                                                                     
        127                                                                     
        128                                                                     
        129                                                                     
        130                                                                     
        131                                                                     
        132                                                                     
        133                                                                     
        134                                                                     
        135                                                                     
        136                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        137                                                                     
        138                                                                     
        139                                                                     
        140                                                                     
        141                                                                     
        142                                                                     
        143                                                                     
        144                                                                     
        145                                                                     
        146                                                                     
        147                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        148                                                                     
        149                                                                     
        150                                                                     
        151                                                                     
        152                                                                     
        153                                                                     
        154                                                                     
        155                                                                     
        156                                                                     
        157                                                                     
        158                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        159                                                                     
        160                                                                     
        161                                                                     
        162                                                                     
        163                                                                     
        164                                                                     
        165                                                                     
        166                                                                     
        167                                                                     
        168                                                                     
        169                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        170                                                                     
        171                                                                     
        172                                                                     
        173                                                                     
        174                                                                     
        175                                                                     
        177                                                                     
        178                                                                     
        179                                                                     
        180                                                                     
        181                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        182                                                                     
        183                                                                     
        184                                                                     
        185                                                                     
        186                                                                     
        187                                                                     
        188                                                                     
        189                                                                     
        190                                                                     
        191                                                                     
        192                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        193                                                                     
        194                                                                     
        195                                                                     
        196                                                                     
        197                                                                     
        198                                                                     
        199                                                                     
        202                                                                     
        203                                                                     
        204                                                                     
        205                                                                     

EMPLOYEE_ID                                                                     
-----------                                                                     
        206                                                                     

100 rows selected.

SQL> select location_id, department_name "Department", TO_CHAR(null) "Warehouse location"
  2  from departments
  3  union
  4  select location_id, TO_CHAR(null) "Department", state_province
  5  from location;
from location
     *
ERROR at line 5:
ORA-00942: table or view does not exist 


SQL> l
  1  select location_id, department_name "Department", TO_CHAR(null) "Warehouse location"
  2  from departments
  3  union
  4  select location_id, TO_CHAR(null) "Department", state_province
  5* from location
SQL> 5
  5* from location
SQL> c/location/locations
  5* from locations
SQL> /

LOCATION_ID Department                     Warehouse location                   
----------- ------------------------------ -------------------------            
       1000                                                                     
       1100                                                                     
       1200                                Tokyo Prefecture                     
       1300                                                                     
       1400 IT                                                                  
       1400                                Texas                                
       1500 Shipping                                                            
       1500                                California                           
       1600                                New Jersey                           
       1700 Accounting                                                          
       1700 Administration                                                      

LOCATION_ID Department                     Warehouse location                   
----------- ------------------------------ -------------------------            
       1700 Benefits                                                            
       1700 Construction                                                        
       1700 Contracting                                                         
       1700 Control And Credit                                                  
       1700 Corporate Tax                                                       
       1700 Executive                                                           
       1700 Finance                                                             
       1700 Government Sales                                                    
       1700 IT Helpdesk                                                         
       1700 IT Support                                                          
       1700 Manufacturing                                                       

LOCATION_ID Department                     Warehouse location                   
----------- ------------------------------ -------------------------            
       1700 NOC                                                                 
       1700 Operations                                                          
       1700 Payroll                                                             
       1700 Purchasing                                                          
       1700 Recruiting                                                          
       1700 Retail Sales                                                        
       1700 Shareholder Services                                                
       1700 Treasury                                                            
       1700                                Washington                           
       1800 Marketing                                                           
       1800                                Ontario                              

LOCATION_ID Department                     Warehouse location                   
----------- ------------------------------ -------------------------            
       1900                                Yukon                                
       2000                                                                     
       2100                                Maharashtra                          
       2200                                New South Wales                      
       2300                                                                     
       2400 Human Resources                                                     
       2400                                                                     
       2500 Sales                                                               
       2500                                Oxford                               
       2600                                Manchester                           
       2700 Public Relations                                                    

LOCATION_ID Department                     Warehouse location                   
----------- ------------------------------ -------------------------            
       2700                                Bavaria                              
       2800                                Sao Paulo                            
       2900                                Geneve                               
       3000                                BE                                   
       3100                                Utrecht                              
       3200                                Distrito Federal,                    

50 rows selected.

SQL> select employee_id, job_id, salary
  2  from employees
  3  union
  4  select employee_id, job_id, 0
  5  from job_history;

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        100 AD_PRES         24000                                               
        101 AC_ACCOUNT          0                                               
        101 AC_MGR              0                                               
        101 AD_VP           17000                                               
        102 AD_VP           17000                                               
        102 IT_PROG             0                                               
        103 IT_PROG          9000                                               
        104 IT_PROG          6000                                               
        105 IT_PROG          4800                                               
        106 IT_PROG          4800                                               
        107 IT_PROG          4200                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        108 FI_MGR          12008                                               
        109 FI_ACCOUNT       9000                                               
        110 FI_ACCOUNT       8200                                               
        111 FI_ACCOUNT       7700                                               
        112 FI_ACCOUNT       7800                                               
        113 FI_ACCOUNT       6900                                               
        114 PU_MAN          11000                                               
        114 ST_CLERK            0                                               
        115 PU_CLERK         3100                                               
        116 PU_CLERK         2900                                               
        117 PU_CLERK         2800                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        118 PU_CLERK         2600                                               
        119 PU_CLERK         2500                                               
        120 ST_MAN           8000                                               
        121 ST_MAN           8200                                               
        122 ST_CLERK            0                                               
        122 ST_MAN           7900                                               
        123 ST_MAN           6500                                               
        124 ST_MAN           5800                                               
        125 ST_CLERK         3200                                               
        126 ST_CLERK         2700                                               
        127 ST_CLERK         2400                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        128 ST_CLERK         2200                                               
        129 ST_CLERK         3300                                               
        130 ST_CLERK         2800                                               
        131 ST_CLERK         2500                                               
        132 ST_CLERK         2100                                               
        133 ST_CLERK         3300                                               
        134 ST_CLERK         2900                                               
        135 ST_CLERK         2400                                               
        136 ST_CLERK         2200                                               
        137 ST_CLERK         3600                                               
        138 ST_CLERK         3200                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        139 ST_CLERK         2700                                               
        140 ST_CLERK         2500                                               
        141 ST_CLERK         3500                                               
        142 ST_CLERK         3100                                               
        143 ST_CLERK         2600                                               
        144 ST_CLERK         2500                                               
        145 SA_MAN          14000                                               
        146 SA_MAN          13500                                               
        147 SA_MAN          12000                                               
        148 SA_MAN          11000                                               
        149 SA_MAN          10500                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        150 SA_REP          10000                                               
        151 SA_REP           9500                                               
        152 SA_REP           9000                                               
        153 SA_REP           8000                                               
        154 SA_REP           7500                                               
        155 SA_REP           7000                                               
        156 SA_REP          10000                                               
        157 SA_REP           9500                                               
        158 SA_REP           9000                                               
        159 SA_REP           8000                                               
        160 SA_REP           7500                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        161 SA_REP           7000                                               
        162 SA_REP          10500                                               
        163 SA_REP           9500                                               
        164 SA_REP           7200                                               
        165 SA_REP           6800                                               
        166 SA_REP           6400                                               
        167 SA_REP           6200                                               
        168 SA_REP          11500                                               
        169 SA_REP          10000                                               
        170 SA_REP           9600                                               
        171 SA_REP           7400                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        172 SA_REP           7300                                               
        173 SA_REP           6100                                               
        174 SA_REP          11000                                               
        175 SA_REP           8800                                               
        176 SA_MAN              0                                               
        176 SA_REP              0                                               
        176 SA_REP           8600                                               
        177 SA_REP           8400                                               
        178 SA_REP           7000                                               
        179 SA_REP           6200                                               
        180 SH_CLERK         3200                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        181 SH_CLERK         3100                                               
        182 SH_CLERK         2500                                               
        183 SH_CLERK         2800                                               
        184 SH_CLERK         4200                                               
        185 SH_CLERK         4100                                               
        186 SH_CLERK         3400                                               
        187 SH_CLERK         3000                                               
        188 SH_CLERK         3800                                               
        189 SH_CLERK         3600                                               
        190 SH_CLERK         2900                                               
        191 SH_CLERK         2500                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        192 SH_CLERK         4000                                               
        193 SH_CLERK         3900                                               
        194 SH_CLERK         3200                                               
        195 SH_CLERK         2800                                               
        196 SH_CLERK         3100                                               
        197 SH_CLERK         3000                                               
        198 SH_CLERK         2600                                               
        199 SH_CLERK         2600                                               
        200 AC_ACCOUNT          0                                               
        200 AD_ASST             0                                               
        200 AD_ASST          4400                                               

EMPLOYEE_ID JOB_ID         SALARY                                               
----------- ---------- ----------                                               
        201 MK_MAN          13000                                               
        201 MK_REP              0                                               
        202 MK_REP           6000                                               
        203 HR_REP           6500                                               
        204 PR_REP          10000                                               
        205 AC_MGR          12008                                               
        206 AC_ACCOUNT       8300                                               

117 rows selected.

SQL> spool off
