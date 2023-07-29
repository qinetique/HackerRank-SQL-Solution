/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select SALARY * MONTHS as TOTALEARNINGS, count(*) from EMPLOYEE
group by TOTALEARNINGS order by TOTALEARNINGS desc
limit 1;
/*Query Ends*/