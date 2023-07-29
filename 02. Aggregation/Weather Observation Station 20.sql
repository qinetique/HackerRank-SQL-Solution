/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

set @rowindex := -1;
select round(avg(st.LAT_N),4)
from(select @rowindex := @rowindex + 1 as INDEXX, s.LAT_N from STATION as s order by s.LAT_N) as st
where st.INDEXX in(floor(@rowindex / 2))

/*Query Ends*/