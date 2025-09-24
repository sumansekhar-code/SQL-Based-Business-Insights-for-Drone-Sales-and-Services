GO
use Xeta_Squad_Ltd;
GO

-- [1] Find Duplicate records in employees table(No such record found)
select e_name,e_d_id, count(*) as No_of_duplicates
from Employees
group by e_name, e_d_id
having count(*)>1;

-- [2] Find employee  from employees table whose salary is highest(i.e. 115740)
select max(e_salary) as Highest_Salary
from employees;

-- [3] Find the 2nd highest salary from employees table(i.e. 115671)
select max(e_salary) as Second_highest_salary
from employees
where e_salary<(select max(e_salary) from employees);

-- [4] Find employee without department ID(No such Record found)
select e.*
from employees e
left join departments d
on e.e_d_id = d.d_id
where d.d_id is NULL;

-- [5] Find the product ID, Product Name, total revenue(desc) for each product in sales table ()
select s.p_id, p.p_name, sum(s.price) as Total_Revenue
from sales s
join Products p
on s.p_id = p.p_id
group by s.p_id, p.p_name
order by Total_Revenue desc;

-- [6] Find the TOP 3 highest paid employees
select top 3 e_id, e_name, e_experience, e_salary
from employees
order by e_salary desc;

-- [7] Find the count of order for each customer
select s.c_id, c.c_name, count(s.s_id)
from sales s
join customers c
on s.c_id = c.c_id
group by s.c_id, c.c_name;

-- [8] Extract details of all employees who joined after 2020
select e_id, e_name, year(e_doj) as Year_DOJ, e_doj
from employees
where year(e_doj) >= '2020';

-- [9] Calculate the Average order value per customer
select c_id, avg(quantity) as Average_Order
from sales
group by c_id, quantity;

--[10] Find the latest order placed by each customer
select c_id, max(s_date) as Latest_Purchase
from sales
group by c_id;

--[11] Identify the TOP 5 most selling product
select TOP 5 s.p_id, p.p_name, count(s.s_id) as No_Of_Selling
from sales s
join products p
on s.p_id = p.p_id
group by s.p_id,p.p_name
order by No_Of_Selling desc;

--[12] Identify the TOP 5 most rare selling product
select TOP 5 s.p_id, p.p_name, count(s.s_id) as No_Of_Selling
from sales s
join products p
on s.p_id = p.p_id
group by s.p_id,p.p_name
order by No_Of_Selling asc;

--[13] Find total revenue and no of order by states
SELECT 
    c.c_state AS State,
    SUM(s.price) AS Total_Revenue,
    COUNT(s.s_id) AS Number_Of_Orders
FROM Sales s
JOIN Customers c
    ON s.c_id = c.c_id
GROUP BY c.c_state
ORDER BY Total_Revenue DESC;


-- Hotspot detection by state
SELECT 
    c.c_state AS State,
    COUNT(s.s_id) AS Total_Orders,
    SUM(s.price) AS Total_Revenue,
    RANK() OVER (ORDER BY COUNT(s.s_id) DESC) AS Order_Hotspot_Rank,
    RANK() OVER (ORDER BY SUM(s.price) DESC) AS Revenue_Hotspot_Rank
FROM Sales s
JOIN Customers c
    ON s.c_id = c.c_id
GROUP BY c.c_state
ORDER BY Total_Orders DESC;
