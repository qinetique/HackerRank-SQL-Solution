/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select round(abs(max(LAT_N) - min(LAT_N))+abs(max(LONG_W) -min(LONG_W)),4) from STATION;

/*Query Ends*/