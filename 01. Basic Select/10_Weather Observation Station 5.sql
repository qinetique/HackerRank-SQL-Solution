/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select CITY, length(CITY) from STATION order by length(CITY) desc, CITY limit 1;
select CITY, length(CITY) from STATION order by length(CITY) asc, CITY limit 1;

/*Query Ends*/