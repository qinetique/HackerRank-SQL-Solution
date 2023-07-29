/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select H.HACKER_ID,H.NAME, sum(MSCORE) from HACKERS H
inner join(select S.HACKER_ID, max(SCORE) as MSCORE from SUBMISSIONS S
          group by S.HACKER_ID, S.CHALLENGE_ID)
SS on H.HACKER_ID = SS.HACKER_ID group by H.HACKER_ID, H.NAME
having sum(MSCORE) > 0 order by sum(MSCORE) desc, H.HACKER_ID asc;

/*Query Ends*/