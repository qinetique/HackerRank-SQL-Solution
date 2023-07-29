/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select N, case when P is null then "Root"
when exists(select P from BST where bin.N = P) then "Inner" else "Leaf" end from BST as bin order by N;

/*Query Ends*/