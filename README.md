# Analyzing-Traffic-Data-SQL
The objective of this analysis is to utilize the **utm parameters** stored
in the database for the purpose of identifying paid website sessions.
By analyzing our session data, we can establish a connection with our 
order data in order to gain insight into the amount of revenue generated
by our paid campaigns.

 ## Disclaimer
1. This code is not original and was developed by following instructions from the Udemy course
   "Advanced SQL: MySQL Data Analysis & Business Intelligence" by John Pauler.
2. The course covers various topics related to SQL and it spans 8 hours on-demand video.
3. In some cases, modifications or adaptations have been made to the original code to fit specific requirements or enhance functionality.
4.  To access the original course materials and learn more, please refer to the "Advanced SQL: MySQL Data Analysis & Business Intelligence" available here (https://www.udemy.com/course/advanced-sql-mysql-for-analytics-business-intelligence/)

## Project Structure
   
 ## Task 1
 We have begun to generate sales and now we would like to gain insight
 into the primary sources of our website sessions up until 2012-04-12. 
 It would greatly benefit us to analyze the distribution based on **UTM
 source**, **campaign**, and **referring domain**.
 
 ### Task 1, results:
<img width="462" alt="Task1" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/blob/master/Task1.PNG">

According to the results we have gathered, it appears that further 
investigation into **gsearch nonbrand** would be beneficial in order
to explore potential optimization strategies.


  ## Task 2
 It appears that the primary source of our website traffic is coming
 from **gsearch nonbranded** sources. However, it is important for us
 to determine whether these sessions are resulting in actual sales.
 
 To assess this, we should calculate **the conversion rate (CVR)** from
 session to order. Considering the cost per click, it is essential
 for the CVR to be **at least 4%** in order to achieve favorable results.
 
 If the CVR falls significantly below this threshold, we may need to
 decrease our bid amounts. Conversely, if the CVR exceeds expectations,
 we can consider increasing our bids to generate a higher volume of 
 traffic.

 ### Task 2, results:
 
<img width="304" alt="Task2" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/blob/master/Task2.PNG">

It seems that our current conversion rate is causing us to exceed our budget, indicating that we are below the required 4% threshold for the economics to be viable. Therefore, we need to reduce our search bids to align with this analysis and avoid overspending.

## Task 3
 After analyzing the conversion rate, we decided to decrease our bid
 for **gsearch nonbrand**  on 2012-04-15. We are now interested in
 tracking the trended session volume for **gsearch nonbrand** on a weekly
 basis to determine if the bid adjustments have resulted in a decrease
 in volume.
 
### Task 3, results:
<img width="178" alt="Task3" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/blob/master/Task3.PNG">

From the information provided, it appears that making bid changes 
significantly affects the performance of **gsearch nonbrand**.
While we aim to maximize our ad visibility and reach, it is
crucial to ensure that our advertising expenditure remains
within our affordable limits.

## Task 4
Our objective is to analyze the conversion rates across different device
 types, specifically from session to order. If we observe that desktop 
 performance surpasses mobile performance, we can consider increasing 
 our bids specifically for desktop in order to generate higher volume.
### Task 4, results:

<img width="271" alt="Task4" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/blob/master/Task4.PNG">

This demonstrates the necessity of increasing our desktop bids. By bidding 
higher, we can improve our ranking in the auctions.
