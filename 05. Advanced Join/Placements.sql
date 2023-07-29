/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select std.name from students as std
inner join packages as pkg on std.id = pkg.id
inner join friends as frnds on std.id = frnds.id
inner join packages as pkgs on frnds.friend_id = pkgs.id
where pkgs.salary > pkg.salary order by pkgs.salary

/*Query Ends*/