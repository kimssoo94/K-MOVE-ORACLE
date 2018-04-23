SQL> select employee_id, job_id
  2  from employees
  3  union
  4  select employee_id, job_id
  5  from job_history;

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        100 AD_PRES                                                             
        101 AC_ACCOUNT                                                          
        101 AC_MGR                                                              
        101 AD_VP                                                               
        102 AD_VP                                                               
        102 IT_PROG                                                             
        103 IT_PROG                                                             
        104 IT_PROG                                                             
        105 IT_PROG                                                             
        106 IT_PROG                                                             
        107 IT_PROG                                                             

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        108 FI_MGR                                                              
        109 FI_ACCOUNT                                                          
        110 FI_ACCOUNT                                                          
        111 FI_ACCOUNT                                                          
        112 FI_ACCOUNT                                                          
        113 FI_ACCOUNT                                                          
        114 PU_MAN                                                              
        114 ST_CLERK                                                            
        115 PU_CLERK                                                            
        116 PU_CLERK                                                            
        117 PU_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        118 PU_CLERK                                                            
        119 PU_CLERK                                                            
        120 ST_MAN                                                              
        121 ST_MAN                                                              
        122 ST_CLERK                                                            
        122 ST_MAN                                                              
        123 ST_MAN                                                              
        124 ST_MAN                                                              
        125 ST_CLERK                                                            
        126 ST_CLERK                                                            
        127 ST_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        128 ST_CLERK                                                            
        129 ST_CLERK                                                            
        130 ST_CLERK                                                            
        131 ST_CLERK                                                            
        132 ST_CLERK                                                            
        133 ST_CLERK                                                            
        134 ST_CLERK                                                            
        135 ST_CLERK                                                            
        136 ST_CLERK                                                            
        137 ST_CLERK                                                            
        138 ST_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        139 ST_CLERK                                                            
        140 ST_CLERK                                                            
        141 ST_CLERK                                                            
        142 ST_CLERK                                                            
        143 ST_CLERK                                                            
        144 ST_CLERK                                                            
        145 SA_MAN                                                              
        146 SA_MAN                                                              
        147 SA_MAN                                                              
        148 SA_MAN                                                              
        149 SA_MAN                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        150 SA_REP                                                              
        151 SA_REP                                                              
        152 SA_REP                                                              
        153 SA_REP                                                              
        154 SA_REP                                                              
        155 SA_REP                                                              
        156 SA_REP                                                              
        157 SA_REP                                                              
        158 SA_REP                                                              
        159 SA_REP                                                              
        160 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        161 SA_REP                                                              
        162 SA_REP                                                              
        163 SA_REP                                                              
        164 SA_REP                                                              
        165 SA_REP                                                              
        166 SA_REP                                                              
        167 SA_REP                                                              
        168 SA_REP                                                              
        169 SA_REP                                                              
        170 SA_REP                                                              
        171 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        172 SA_REP                                                              
        173 SA_REP                                                              
        174 SA_REP                                                              
        175 SA_REP                                                              
        176 SA_MAN                                                              
        176 SA_REP                                                              
        177 SA_REP                                                              
        178 SA_REP                                                              
        179 SA_REP                                                              
        180 SH_CLERK                                                            
        181 SH_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        182 SH_CLERK                                                            
        183 SH_CLERK                                                            
        184 SH_CLERK                                                            
        185 SH_CLERK                                                            
        186 SH_CLERK                                                            
        187 SH_CLERK                                                            
        188 SH_CLERK                                                            
        189 SH_CLERK                                                            
        190 SH_CLERK                                                            
        191 SH_CLERK                                                            
        192 SH_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        193 SH_CLERK                                                            
        194 SH_CLERK                                                            
        195 SH_CLERK                                                            
        196 SH_CLERK                                                            
        197 SH_CLERK                                                            
        198 SH_CLERK                                                            
        199 SH_CLERK                                                            
        200 AC_ACCOUNT                                                          
        200 AD_ASST                                                             
        201 MK_MAN                                                              
        201 MK_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        202 MK_REP                                                              
        203 HR_REP                                                              
        204 PR_REP                                                              
        205 AC_MGR                                                              
        206 AC_ACCOUNT                                                          

115 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id, job_id
  2  from employees
  3  union all
  4  select employee_id, job_id
  5* from job_history
SQL> /

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        206 AC_ACCOUNT                                                          
        205 AC_MGR                                                              
        200 AD_ASST                                                             
        100 AD_PRES                                                             
        101 AD_VP                                                               
        102 AD_VP                                                               
        109 FI_ACCOUNT                                                          
        110 FI_ACCOUNT                                                          
        111 FI_ACCOUNT                                                          
        112 FI_ACCOUNT                                                          
        113 FI_ACCOUNT                                                          

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        108 FI_MGR                                                              
        203 HR_REP                                                              
        103 IT_PROG                                                             
        104 IT_PROG                                                             
        105 IT_PROG                                                             
        106 IT_PROG                                                             
        107 IT_PROG                                                             
        201 MK_MAN                                                              
        202 MK_REP                                                              
        204 PR_REP                                                              
        115 PU_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        116 PU_CLERK                                                            
        117 PU_CLERK                                                            
        118 PU_CLERK                                                            
        119 PU_CLERK                                                            
        114 PU_MAN                                                              
        145 SA_MAN                                                              
        146 SA_MAN                                                              
        147 SA_MAN                                                              
        148 SA_MAN                                                              
        149 SA_MAN                                                              
        150 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        151 SA_REP                                                              
        152 SA_REP                                                              
        153 SA_REP                                                              
        154 SA_REP                                                              
        155 SA_REP                                                              
        156 SA_REP                                                              
        157 SA_REP                                                              
        158 SA_REP                                                              
        159 SA_REP                                                              
        160 SA_REP                                                              
        161 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        162 SA_REP                                                              
        163 SA_REP                                                              
        164 SA_REP                                                              
        165 SA_REP                                                              
        166 SA_REP                                                              
        167 SA_REP                                                              
        168 SA_REP                                                              
        169 SA_REP                                                              
        170 SA_REP                                                              
        171 SA_REP                                                              
        172 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        173 SA_REP                                                              
        174 SA_REP                                                              
        175 SA_REP                                                              
        176 SA_REP                                                              
        177 SA_REP                                                              
        178 SA_REP                                                              
        179 SA_REP                                                              
        198 SH_CLERK                                                            
        199 SH_CLERK                                                            
        180 SH_CLERK                                                            
        181 SH_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        182 SH_CLERK                                                            
        183 SH_CLERK                                                            
        184 SH_CLERK                                                            
        185 SH_CLERK                                                            
        186 SH_CLERK                                                            
        187 SH_CLERK                                                            
        188 SH_CLERK                                                            
        189 SH_CLERK                                                            
        190 SH_CLERK                                                            
        191 SH_CLERK                                                            
        192 SH_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        193 SH_CLERK                                                            
        194 SH_CLERK                                                            
        195 SH_CLERK                                                            
        196 SH_CLERK                                                            
        197 SH_CLERK                                                            
        125 ST_CLERK                                                            
        126 ST_CLERK                                                            
        127 ST_CLERK                                                            
        128 ST_CLERK                                                            
        129 ST_CLERK                                                            
        130 ST_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        131 ST_CLERK                                                            
        132 ST_CLERK                                                            
        133 ST_CLERK                                                            
        134 ST_CLERK                                                            
        135 ST_CLERK                                                            
        136 ST_CLERK                                                            
        137 ST_CLERK                                                            
        138 ST_CLERK                                                            
        139 ST_CLERK                                                            
        140 ST_CLERK                                                            
        141 ST_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        142 ST_CLERK                                                            
        143 ST_CLERK                                                            
        144 ST_CLERK                                                            
        120 ST_MAN                                                              
        121 ST_MAN                                                              
        122 ST_MAN                                                              
        123 ST_MAN                                                              
        124 ST_MAN                                                              
        101 AC_ACCOUNT                                                          
        200 AC_ACCOUNT                                                          
        101 AC_MGR                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        200 AD_ASST                                                             
        102 IT_PROG                                                             
        201 MK_REP                                                              
        176 SA_MAN                                                              
        176 SA_REP                                                              
        114 ST_CLERK                                                            
        122 ST_CLERK                                                            

117 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id, job_id
  2  from employees
  3  union all
  4  select employee_id, job_id
  5  from job_history
  6* order by employee_id
SQL> /

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        100 AD_PRES                                                             
        101 AD_VP                                                               
        101 AC_ACCOUNT                                                          
        101 AC_MGR                                                              
        102 AD_VP                                                               
        102 IT_PROG                                                             
        103 IT_PROG                                                             
        104 IT_PROG                                                             
        105 IT_PROG                                                             
        106 IT_PROG                                                             
        107 IT_PROG                                                             

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        108 FI_MGR                                                              
        109 FI_ACCOUNT                                                          
        110 FI_ACCOUNT                                                          
        111 FI_ACCOUNT                                                          
        112 FI_ACCOUNT                                                          
        113 FI_ACCOUNT                                                          
        114 PU_MAN                                                              
        114 ST_CLERK                                                            
        115 PU_CLERK                                                            
        116 PU_CLERK                                                            
        117 PU_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        118 PU_CLERK                                                            
        119 PU_CLERK                                                            
        120 ST_MAN                                                              
        121 ST_MAN                                                              
        122 ST_MAN                                                              
        122 ST_CLERK                                                            
        123 ST_MAN                                                              
        124 ST_MAN                                                              
        125 ST_CLERK                                                            
        126 ST_CLERK                                                            
        127 ST_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        128 ST_CLERK                                                            
        129 ST_CLERK                                                            
        130 ST_CLERK                                                            
        131 ST_CLERK                                                            
        132 ST_CLERK                                                            
        133 ST_CLERK                                                            
        134 ST_CLERK                                                            
        135 ST_CLERK                                                            
        136 ST_CLERK                                                            
        137 ST_CLERK                                                            
        138 ST_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        139 ST_CLERK                                                            
        140 ST_CLERK                                                            
        141 ST_CLERK                                                            
        142 ST_CLERK                                                            
        143 ST_CLERK                                                            
        144 ST_CLERK                                                            
        145 SA_MAN                                                              
        146 SA_MAN                                                              
        147 SA_MAN                                                              
        148 SA_MAN                                                              
        149 SA_MAN                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        150 SA_REP                                                              
        151 SA_REP                                                              
        152 SA_REP                                                              
        153 SA_REP                                                              
        154 SA_REP                                                              
        155 SA_REP                                                              
        156 SA_REP                                                              
        157 SA_REP                                                              
        158 SA_REP                                                              
        159 SA_REP                                                              
        160 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        161 SA_REP                                                              
        162 SA_REP                                                              
        163 SA_REP                                                              
        164 SA_REP                                                              
        165 SA_REP                                                              
        166 SA_REP                                                              
        167 SA_REP                                                              
        168 SA_REP                                                              
        169 SA_REP                                                              
        170 SA_REP                                                              
        171 SA_REP                                                              

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        172 SA_REP                                                              
        173 SA_REP                                                              
        174 SA_REP                                                              
        175 SA_REP                                                              
        176 SA_REP                                                              
        176 SA_MAN                                                              
        176 SA_REP                                                              
        177 SA_REP                                                              
        178 SA_REP                                                              
        179 SA_REP                                                              
        180 SH_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        181 SH_CLERK                                                            
        182 SH_CLERK                                                            
        183 SH_CLERK                                                            
        184 SH_CLERK                                                            
        185 SH_CLERK                                                            
        186 SH_CLERK                                                            
        187 SH_CLERK                                                            
        188 SH_CLERK                                                            
        189 SH_CLERK                                                            
        190 SH_CLERK                                                            
        191 SH_CLERK                                                            

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        192 SH_CLERK                                                            
        193 SH_CLERK                                                            
        194 SH_CLERK                                                            
        195 SH_CLERK                                                            
        196 SH_CLERK                                                            
        197 SH_CLERK                                                            
        198 SH_CLERK                                                            
        199 SH_CLERK                                                            
        200 AD_ASST                                                             
        200 AD_ASST                                                             
        200 AC_ACCOUNT                                                          

EMPLOYEE_ID JOB_ID                                                              
----------- ----------                                                          
        201 MK_MAN                                                              
        201 MK_REP                                                              
        202 MK_REP                                                              
        203 HR_REP                                                              
        204 PR_REP                                                              
        205 AC_MGR                                                              
        206 AC_ACCOUNT                                                          

117 rows selected.

SQL> spool off
