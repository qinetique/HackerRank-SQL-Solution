/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select CITY.NAME from COUNTRY,CITY where CITY.COUNTRYCODE = COUNTRY.CODE and COUNTRY.CONTINENT = "AFRICA";

/*Query Ends*/