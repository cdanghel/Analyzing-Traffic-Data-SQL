/* Task 1

 We aim to analyze the origin of the majority of our website sessions,
 as we begin to generate sales. Our goal is to gain insights into the
 specific UTM sources, campaigns, and referring domains that are
 driving traffic to our website. This analysis covers the period up 
 until yesterday, allowing us to obtain a comprehensive breakdown 
 of these factors.*/

-- Solution

use mavenfuzzyfactory;
select
    count(distinct website_sessions.website_session_id) as sessions,
    count(distinct orders.order_id) as orders
from website_sessions
     left join orders
          on orders.website_sessions_id = website_sessions.website_session_id
where website_sessions.created_at < '2012-04-14'
    and utm_source = 'gsearch'
    and utm_campaign = 'nonbrand'
;

/*Results

It appears that our primary source of traffic is coming from nonbranded searches 
in gsearch. However, it is important for us to determine whether these sessions are
effectively generating sales.
*/

  
