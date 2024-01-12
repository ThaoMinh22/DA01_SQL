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
