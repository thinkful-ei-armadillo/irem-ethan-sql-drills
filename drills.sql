select count (*) 
from employee 
join department 
  on employee.department = department.id 
where dept_name='Sales'; 

select emp_name 
from employee 
join employee_project 
  on employee.id = employee_project.emp_id
join project  
  on employee_project.project_id =project.id 
where project.project_name='Plan christmas party';

select emp_name,dept_name, project_name 
from employee 
join department 
  on employee.department=department.id 
join employee_project 
  on employee.id = employee_project.emp_id
join project 
  on employee_project.project_id =project.id 
where project.project_name='Watch paint dry'
and department.dept_name = 'Warehouse';

select emp_name, project_name 
from employee 
join department 
  on employee.department=department.id 
join employee_project 
  on employee.id = employee_project.emp_id
join project 
  on employee_project.project_id =project.id 
where department.dept_name = 'Sales';

select emp_name
from department 
join employee
  on department.manager=employee.id
join employee_project 
  on employee_project.emp_id=employee.id
join project
  on employee_project.project_id=project.id
where project.project_name = 'Watch paint dry';

