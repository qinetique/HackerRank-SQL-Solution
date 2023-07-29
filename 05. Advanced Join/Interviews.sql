/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select cn.contest_id, cn.hacker_id, cn.name,
sum(subs.total_submissions) as total_sub_sum,
sum(subs.total_accepted_submissions) as total_accepted_sub_sum,
sum(vsub.total_views) as total_views_sum,
sum(vsub.total_unique_views) as total_unique_views_sum from contests as cn
join colleges as cl on cn.contest_id = cl.contest_id
join challenges as ch on cl.college_id = ch.college_id
left join(select challenge_id, sum(total_views) as total_views, sum(total_unique_views) as total_unique_views from view_stats group by challenge_id) as vsub
on ch.challenge_id = vsub.challenge_id
left join (select challenge_id, sum(total_submissions) as total_submissions, sum(total_accepted_submissions) as total_accepted_submissions from submission_stats group by challenge_id) as subs
on ch.challenge_id = subs.challenge_id group by cn.contest_id, cn.hacker_id, cn.name
having total_sub_sum !=0 and total_accepted_sub_sum !=0 and total_views_sum !=0 and total_unique_views_sum !=0 
order by cn.contest_id

/*Query Ends*/