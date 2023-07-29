/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select ceil(avg(SALARY) - avg(replace(SALARY,"0",""))) from EMPLOYEES;

/*Query Ends*/