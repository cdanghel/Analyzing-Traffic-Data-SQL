# Analyzing-Traffic-Data-SQL
The objective of this analysis is to utilize the **utm parameters** stored
in the database for the purpose of identifying paid website sessions.
By analyzing our session data, we can establish a connection with our 
order data in order to gain insight into the amount of revenue generated
by our paid campaigns.
 
 ## Task 1
 We have begun to generate sales and now we would like to gain insight
 into the primary sources of our website sessions up until 2012-04-12. 
 It would greatly benefit us to analyze the distribution based on **UTM
 source**, **campaign**, and **referring domain**.
 
 ### Task 1, results:
<img width="462" alt="Task1" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/assets/131986570/3d9c27b3-20c5-4126-9e76-a2da188e2ecf">

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
 
<img width="304" alt="Task2" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/assets/131986570/b322e9f2-657b-4d02-9516-e818215805ef">

It seems that our current conversion rate is causing us to exceed our budget, indicating that we are below the required 4% threshold for the economics to be viable. Therefore, we need to reduce our search bids to align with this analysis and avoid overspending.

## Task 3

### Task 3, results:
<img width="178" alt="Task3" src="https://github.com/cdanghel/Analyzing-Traffic-Data-SQL/assets/131986570/a50db7fb-6ef8-4988-9fa2-578a5fc253bd">
