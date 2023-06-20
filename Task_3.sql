/* Task 3
 After analyzing the conversion rate, we decided to decrease our bid
 for gsearch nonbrand  on 2012-04-15. We are now interested in
 tracking the trended session volume for gsearch nonbrand on a weekly
 basis to determine if the bid adjustments have resulted in a decrease
 in volume.*/

# Solution 

use mavenfuzzyfactory;

select 
    -- year(created_at) as yr,
    -- week(created_at) as wk,
     min(date(created_at)) as week_started_at,
     count(distinct website_session_id) as sessions
from website_sessions
where created_at < '2012-05-12'
     and utm_source = 'gsearch'
     and utm_campaign = 'nonbrand'
group by 
	year(created_at),
	week(created_at)

/*Results
From the information provided, it appears that making bid changes 
significantly affects the performance of gsearch nonbrand.
While we aim to maximize our ad visibility and reach, it is
crucial to ensure that our advertising expenditure remains
within our affordable limits.*/
*/
