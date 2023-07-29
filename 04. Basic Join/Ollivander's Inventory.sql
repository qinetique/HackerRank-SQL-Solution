/*Author: Tonmoy Mondal
*Git URI: https://github.com/itxTonmoy
*Contact: dev.tonmoy@proton.me
*/

/*Query Begins*/

select W.ID, WP.AGE,W.COINS_NEEDED,W.POWER from WANDS W
join WANDS_PROPERTY WP on W.CODE = WP.CODE
where WP.IS_EVIL = 0 and W.COINS_NEEDED = (select min(W1.COINS_NEEDED) from WANDS W1
                                          join WANDS_PROPERTY WP1 on W1.CODE = WP1.CODE
                                          where WP.AGE = WP1.AGE and W.POWER = W1.POWER)
order by W.POWER desc, WP.AGE desc;

/*Query Ends*/