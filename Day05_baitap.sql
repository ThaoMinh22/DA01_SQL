---Ex1
Select Distinct City From Station
Where ID%2=0 
---Ex2
Select Count(City) - Count(Distinct City) From Station
---Ex3
Selcet From Employee
Where AVG(Salary)
---Ex4
SELECT SELECT ROUND(CAST(SUM(item_count*order_occurrences)/SUM(oder_occurrences) AS DECIMAL),1) AS mean
FROM items_per_order
---Ex5
SELECT candidate_id
From candidates
Where skill in ('Python', 'Tableau', 'PosgreSQL')
Group By candidate_id
Having count(skill) =3
---Ex6
SELECT user_id
Date(MAX(post_date)) - Date(MIN(post_date)) As days_between
From posts
Where post_date>='2021-01-01' And post_date<'2022-01-01'
Group By user_id
Having COUNT(post_id)>=2
---Ex7
SELECT card_name
MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
Group By card_name
Order By difference DESC
---Ex8
SELECT manufacturer,
COUNT(drug) AS drug_count,
ABS(SUM(cogs-total_sales)) AS total_loss
FROM pharmacy_sales
Where total_sale<cogs
Group By manufacturer
Order By total_loss DESC
---Ex9
Select * From cinema
Where id%2=1 And description<>'boring'
Order By rating DESC
---EX10
SELECT
teacher_id,
COUNT(DISTINCT subject_id) AS cnt
FROM Tacher
Group By teacher_id 
---Ex11
Select user_id, Count(follower_id) As follower_count
From Followers
Group By user_id
Order By user_id
---Ex12
Select class
From Courses
Group By class
Having Count(student)>=5
