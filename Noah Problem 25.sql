Select emp_num, emp_lname, emp_fname, sal_amount
    from(
    select lgemployee.emp_num, lgemployee.emp_lname, lgemployee.emp_fname, lgsalary_history.sal_amount, min(lgsalary_history.sal_from)
    from lgsalary_history join lgemployee on lgemployee.emp_num = lgsalary_history.emp_num
    group by emp_num
	order by emp_num
    ) as a
