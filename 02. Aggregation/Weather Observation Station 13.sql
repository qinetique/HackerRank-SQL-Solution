/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select truncate(sum(LAT_N),4) from STATION where LAT_N between 38.7880 and 137.2345;

/*Query Ends*/