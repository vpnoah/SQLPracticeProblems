SELECT Project.Proj_Name, Project.Proj_Value, Project.Proj_Balance, 
	Employee.EMP_LNAME, Employee.EMP_FNAME, Employee.EMP_FNAME,
	Job.Job_Code, Job.Job_Description, Job.Job_CHG_Hour
FROM Employee Join Project On Employee.EMP_NUM = Project.EMP_Num
Join Job On Employee.Job_Code = Job.Job_Code
Order by Employee.Emp_LNAME;