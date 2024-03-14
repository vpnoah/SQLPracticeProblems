Select lgemployee.emp_num, lgemployee.emp_lname, lgemployee.emp_fname, 
		lgsalary_history.sal_from, lgsalary_history.sal_end, lgsalary_history.sal_amount
from lgemployee join lgsalary_history on lgemployee.emp_num = lgsalary_history.emp_num
where lgemployee.emp_num = 83731 or lgemployee.emp_num = 83745 or lgemployee.emp_num = 84039
order by lgemployee.emp_num, lgsalary_history.sal_from;