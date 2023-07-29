/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select round(sqrt(power(max(LAT_N) - min(LAT_N),2) +power(max(LONG_W) - min(LONG_W),2)),4) from STATION;

/*Query Ends*/