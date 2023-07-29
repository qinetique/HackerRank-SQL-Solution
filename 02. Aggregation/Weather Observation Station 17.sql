/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select round(LONG_W,4) from STATION where LAT_N > 38.7780 order by LAT_N limit 1;

/*Query Ends*/