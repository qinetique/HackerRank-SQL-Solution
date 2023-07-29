/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select case when GRADES.GRADE > 7 then STUDENTS.NAME else null end as NAMES,
GRADES.GRADE, STUDENTS.MARKS from STUDENTS
join GRADES on STUDENTS.MARKS between GRADES.MIN_MARK and GRADES.MAX_MARK order by GRADES.GRADE desc,
NAMES asc, STUDENTS.MARKS asc;

/*Query Ends*/