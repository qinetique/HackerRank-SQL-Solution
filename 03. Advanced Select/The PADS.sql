/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select concat(NAME,"(", substring(OCCUPATION,1,1), ")") from OCCUPATIONS order by NAME;
select concat("There are a total of ",count(OCCUPATION), " ", lower(OCCUPATION),"s.") as TOTAL from OCCUPATIONS
group by OCCUPATION order by TOTAL;

/*Query Ends*/