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