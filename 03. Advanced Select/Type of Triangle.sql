/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select case when (A+b <= C or A+C <= B or B+C <= A) then "Not A Triangle"
when(A=B and B=C) then "Equilateral"
when (A = B or B=C or A=C) then "Isosceles"
else "Scalene"
end
from TRIANGLES

/*Query Ends*/