/* Task 2

 It appears that the primary source of our website traffic is coming
 from non-branded searches on GSearch. However, it is important for us
 to determine whether these sessions are resulting in actual sales.
 
 To assess this, we should calculate the conversion rate (CVR) from
 session to order. Considering the cost per click, it is essential
 for the CVR to be at least 4% in order to achieve favorable results.
 
 If the CVR falls significantly below this threshold, we may need to
 decrease our bid amounts. Conversely, if the CVR exceeds expectations,
 we can consider increasing our bids to generate a higher volume of 
 traffic.
*/

# Solution

use mavenfuzzyfactory;
select
     count(distinct website_sessions.website_session_id) as sessions,
     count(distinct orders.order_id) as orders,
     count(distinct orders.order_id)/ count(distinct website_sessions.website_session_id) as session_to_order_conv_rate
from website_sessions
    left join orders
       on orders.website_session_id=website_sessions.website_session_id
where website_sessions.created_at <'2012-04-14'
     and utm_source='gsearch'
     and utm_campaign ='nonbrand'
;
/*Results 
It seems that our current conversion rate is causing us to exceed our budget, indicating that
we are below the required 4% threshold for the economics to be viable. Therefore, we need to
reduce our search bids to align with this analysis and avoid overspending.
*/
