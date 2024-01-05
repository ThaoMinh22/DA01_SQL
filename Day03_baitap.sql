---Ex1
Select name From City 
Where CountryCode ="USA" And Population > 120000
---Ex2
Select * From City
Where CountryCode = "JPN"
---Ex3
Select City, State From Station
---Ex4
Select City From Station
Where City Like "i.e%" or City Like "a%" or City Like "e%" or City Like "i%" or City Like "o%" or City Like "u%"
---Ex5
Select City From Station
Where City Like "%a" or City Like "%e" or City Like "%i" or City Like "%o" or City Like "%u"
---Ex6
Select City From Station
Where City Not In ("a","0","e","u","i")
---Ex7
Select name From Employee
Order by name
---Ex8
Select name From Employee
Where salary > 2000 And months <10
Order by employee_id
---Ex9
Select product_id From Products
Where low_fats = "Y" and recyclable = "Y"
---Ex10
Select name From customer
Where referee_id ><2
---Ex11
Select name, population, area From World
Where area >= 3000000, population >= 25000000
---Ex12
Select author_id From Views
Where author_id = viewer_id
Order by author_id
---Ex13
SELECT finish_date FROM parts_assembly
---Ex14
select yearly_salary from lyft_drivers
where yearly_salary <= 30000000 or yearly_salary >= 700000
---Ex15
select Advertising_channel from uber_advertising
Where money_spent >100000000 in 2019
