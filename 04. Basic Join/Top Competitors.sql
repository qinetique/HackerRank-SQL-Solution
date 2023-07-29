/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select H.HACKER_ID, H.NAME from SUBMISSIONS S
join CHALLENGES C on S.CHALLENGE_ID = C.CHALLENGE_ID
join DIFFICULTY D on C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
join HACKERS H on S.HACKER_ID = H.HACKER_ID and S.SCORE = D.SCORE
group by H.HACKER_ID, H.NAME having count(S.HACKER_ID) > 1
order by count(S.HACKER_ID) desc, S.HACKER_ID asc;

/*Query Ends*/