
 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.employee_name,salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id;


--2. ������� ���� ���������� � ������� �� ������ 2000.

select employees.employee_name, salary.monthly_salary from employees
join employee_salary  on employees.id = employee_salary.employee_id 
join salary on salary.id =  employee_salary.salary_id
where salary.monthly_salary < 2000;


--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select roles.role_name,salary.monthly_salary from roles 
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id;


--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select roles.role_name,salary.monthly_salary from roles 
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.

select employees.employee_name,employee_salary.employee_id  from employees 
left join employee_salary on employees.id = employee_salary.employee_id
where employee_salary.employee_id is null;


--6. ������� ���� ���������� � ���������� �� ���������.

select employees.employee_name, roles.role_name from roles
join roles_employee on roles.id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id;

--7. ������� ����� � ��������� ������ Java �������������.

select  employees.employee_name, roles.role_name from roles
join roles_employee on roles.id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id
where  roles.role_name like ('%Java dev%');

--8. ������� ����� � ��������� ������ Python �������������.

select  employees.employee_name, roles.role_name from roles
join roles_employee on roles.id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id
where  roles.role_name like ('%Python dev%');

--9. ������� ����� � ��������� ���� QA ���������.

select  employees.employee_name, roles.role_name from roles
join roles_employee on roles.id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id
where  roles.role_name like ('%QA%');

--10. ������� ����� � ��������� ������ QA ���������.

select  employees.employee_name, roles.role_name from roles
join roles_employee on roles.id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id
where  roles.role_name like ('%Manual QA%');

--11. ������� ����� � ��������� ��������������� QA.

select  employees.employee_name, roles.role_name from roles
join roles_employee on roles.id = roles_employee.employee_id 
join employees on roles_employee.employee_id = employees.id
where  roles.role_name like ('%Atomation QA%');

--12. ������� ����� � �������� Junior ������������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Junior%');


--13. ������� ����� � �������� Middle ������������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Middle%');


--14. ������� ����� � �������� Senior ������������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Senior%');


--15. ������� �������� Java �������������.


select roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Java dev%');


--16. ������� �������� Python �������������.

select roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Python dev%');


--17. ������� ����� � �������� Junior Python �������������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Junior Python dev%');


--18. ������� ����� � �������� Middle JS �������������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Middle JavaScript dev%');


--19. ������� ����� � �������� Senior Java �������������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Senior Java dev%');


--20. ������� �������� Junior QA ���������.

select roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Junior% %QA engineer%');


--21. ������� ������� �������� ���� Junior ������������.

select roles.role_name,avg(salary.monthly_salary) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Junior%')  group by roles.role_name;


--22. ������� ����� ������� JS �������������.

select roles.role_name,sum(salary.monthly_salary) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%JavaScript dev%') group by roles.role_name;


--23. ������� ����������� �� QA ���������.

select roles.role_name,min(salary.monthly_salary) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%QA engineer%') group by roles.role_name;


--24. ������� ������������ �� QA ���������.

select roles.role_name,max(salary.monthly_salary) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%QA engineer%') group by roles.role_name;


--25. ������� ���������� QA ���������.


select count(roles.role_name) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%QA engineer%');


--26. ������� ���������� Middle ������������.

select count(roles.role_name) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%Middle%');


 --27. ������� ���������� �������������.

select count(roles.role_name) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%dev%');


--28. ������� ���� (�����) �������� �������������.

select sum(salary.monthly_salary) from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
where  roles.role_name like ('%dev%');


--29. ������� �����, ��������� � �� ���� ������������ �� �����������.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id 
order by salary.monthly_salary asc;


--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;


--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;


--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000.

select employees.employee_name,roles.role_name,salary.monthly_salary from employees  
join roles_employee  on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id  
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000
order by salary.monthly_salary asc;






























































