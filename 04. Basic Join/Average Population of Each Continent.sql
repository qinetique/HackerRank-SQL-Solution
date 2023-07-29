/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select COUNTRY.CONTINENT, floor(avg(CITY.POPULATION)) from COUNTRY
join CITY on CITY.COUNTRYCODE = COUNTRY.CODE group by COUNTRY.CONTINENT;

/*Query Ends*/