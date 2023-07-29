/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select sum(CITY.POPULATION) from COUNTRY
left join CITY on COUNTRY.CODE = CITY.COUNTRYCODE
where COUNTRY.CONTINENT = "ASIA";

/*Query Ends*/