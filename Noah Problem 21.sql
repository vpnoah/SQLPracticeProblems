Select emp_fname, emp_lname, emp_email
from lgemployee where (emp_hiredate between '2005-1-1' AND '2014-12-31')
order by emp_lname, emp_fname;