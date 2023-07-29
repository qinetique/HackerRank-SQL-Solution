/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

set @rowindex1 = 0, @rowindex2 = 0, @rowindex3 = 0, @rowindex4 = 0;
select min(dctr),min(prfsr), min(sngr), min(actr)
from (select case when OCCUPATION = 'DOCTOR' then (@rowindex1 := @rowindex1 + 1)
     when OCCUPATION = 'PROFESSOR' then (@rowindex2 := @rowindex2 + 1)
     when OCCUPATION = 'SINGER' then (@rowindex3 := @rowindex3 + 1)
     when OCCUPATION = 'ACTOR' then (@rowindex4 := @rowindex4 + 1) end as rowindex,
     case when OCCUPATION = 'DOCTOR' then NAME end as dctr,
     case when OCCUPATION = 'PROFESSOR' then NAME end as prfsr,
     case when OCCUPATION = 'SINGER' then NAME end as sngr,
     case when OCCUPATION = 'ACTOR' then NAME end as actr from OCCUPATIONS order by NAME) as tonmoy
group by rowindex;

/*Query Ends*/