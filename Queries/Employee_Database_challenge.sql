select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
-- into retirement_titles
from employees as e
inner join titles as t
on e.emp_no=t.emp_no
where e.birth_date between '1952-01-01' and '1955-12-31'
order by 1



Select distinct on (emp_no)emp_no,
	first_name,
	last_name,
	title
-- into unique_titles
from retirement_titles
where to_date = '9999-01-01'
order by 1 asc, to_date desc;



Select count(emp_no) as count, 
 	title
-- into retiring_titles
from unique_titles
group by 2
order by 1 desc



select distinct on (e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
-- into mentorship_eligibility
from employees as e
inner join dept_emp as d
on e.emp_no=d.emp_no
inner join titles as t
on e.emp_no=t.emp_no
where d.to_date = '9999-01-01'
	and (e.birth_date between '1965-01-01' and '1965-12-31')
order by 1



