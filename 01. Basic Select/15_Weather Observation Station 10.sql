/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select distinct CITY from STATION where not regexp_like(CITY, '^.*[aeiouAEIOU]$'); 

/*Query Ends*/