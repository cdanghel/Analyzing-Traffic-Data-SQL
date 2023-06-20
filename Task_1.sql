/*Task 1

We have begun to generate sales and now we would like to gain
 insight into the primary sources of our website sessions up 
 until yesterday. It would greatly benefit us to analyze the 
 distribution based on UTM source, campaign, and referring domain.
*/

use mavenfuzzyfactory;

select
    utm_source,
    utm_campaign,
    http_referer,
    count(distinct website_session_id) as number_of_sessions

from website_sessions
where created_at < '2012-04-12'
group by
     utm_source,
     utm_campaign,
     http_referer
order by number_of_sessions desc

/*
Results: 
It appears that a significant portion of our website traffic
 originates from nonbrand searches on gsearch. However, it is 
 crucial for us to determine whether these browsing sessions
 are ultimately leading to sales.

*/