/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select C.COMPANY_CODE, C.FOUNDER,
count(distinct LM.LEAD_MANAGER_CODE),
count(distinct SM.SENIOR_MANAGER_CODE),
count(distinct M.MANAGER_CODE),
count(distinct E.EMPLOYEE_CODE) from COMPANY as C, LEAD_MANAGER as LM, SENIOR_MANAGER as SM, MANAGER as M, EMPLOYEE as E
where C.COMPANY_CODE = LM.COMPANY_CODE and LM.LEAD_MANAGER_CODE =  SM.LEAD_MANAGER_CODE and SM.SENIOR_MANAGER_CODE = M.SENIOR_MANAGER_CODE and M.MANAGER_CODE = E.MANAGER_CODE
group by C.COMPANY_CODE, C.FOUNDER order by COMPANY_CODE

/*Query Ends*/