/*Task 4

Our objective is to analyze the conversion rates across different device
 types, specifically from session to order. If we observe that desktop 
 performance surpasses mobile performance, we can consider increasing 
 our bids specifically for desktop in order to generate higher volume.
*/

-- Solution

use mavenfuzzyfactory;
select
	 website_sessions.device_type,
     count(distinct website_sessions.website_session_id) as sessions,
     count(distinct orders.order_id) as orders,
      count(distinct orders.order_id)/count(distinct website_sessions.website_session_id) as conv_rt

from website_sessions
     left join orders
         on orders.website_session_id = website_sessions.website_session_id
where website_sessions.created_at < '2012-05-11'
    and utm_source = 'gsearch'
    and utm_campaign = 'nonbrand'
    
group by 1

/*Results
This demonstrates the necessity of increasing our desktop bids. By bidding higher
, we can improve our ranking in the auctions.
*/
