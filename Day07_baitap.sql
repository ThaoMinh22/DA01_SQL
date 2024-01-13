---Ex1
Select Name From STUDENTS
Where marks > 75
Order by Right(Name,3), ID
---Ex2
Select used_id
concat(Upper (Left(name,1)), Lower(Right(name,Length(name-1)))) As name
From Users
Order by used_id
---Ex3
SELECT manufacturer
'$'||ROUND(SUM(toatl_sales)/1000000,0)||' ' 'million' As Sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer
---Ex4
SELECT EXTRACT(month from submit_if) As mth,
product_id,
ROUND(AVG(stars),2) As avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id
---Ex5
SELECT sender_id
COUNT(message_id) As message_count
FROM messages
GROUP BY sender_id
WHERE EXTRACT(month FROM sent_date)=8
AND EXTRACT(year FROM sent_date)=2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
---Ex6
SELECT tweet_id FROM Tweets
WHERE LENGTH(content)>15
---Ex7
SELECT activity_date As day,
COUNT(used_id) As active_users
FROM Activity
WHERE activity_date <='2019-07-27' AND activity_date <30
---Ex8
select COUNT(employee_id) As number employee
from employees
WHERE extract(month FROM joining_date) between 1 and 7
abd extract(year FROM joining_date)=2022
---Ex9
select position('a' in first_name) As position
from worker
where first_name='Amitah'
---Ex10
select substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'

