/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select submission_date,(select count(distinct hacker_id) from submissions as s2 where s1.submission_date = s2.submission_date and(select count(distinct s3.submission_date) from submissions as s3 where s2.hacker_id = s3.hacker_id and s1.submission_date > s3.submission_date) = datediff(s1.submission_date,"2016-03-01")),
(select hacker_id from submissions as s2 where s1.submission_date = s2.submission_date group by hacker_id order by count(submission_id) desc, hacker_id limit 1) as int_h_id,
(select name from hackers where hacker_id = int_h_id) from (select distinct submission_date from submissions) as s1 group by submission_date

/*Query Ends*/