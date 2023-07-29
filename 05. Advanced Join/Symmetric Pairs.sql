/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select FTBL.X, FTBL.Y from FUNCTIONS as FTBL
join FUNCTIONS as FTBLJOIN on FTBL.X = FTBLJOIN.Y and FTBL.Y=FTBLJOIN.X group by FTBL.X,FTBL.Y
having count(FTBL.X) > 1 or FTBL.X < FTBL.Y order by FTBL.X;

/*Query Ends*/