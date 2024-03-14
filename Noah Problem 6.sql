SELECT Employee.EMP_NUM, Employee.EMP_LNAME, SUM(Assignment.Assign_Hours) as Total_Hours, SUM(Assignment.Assign_Charge) as Total_Charge 
from Assignment join Employee where Assignment.EMP_NUM = Employee.EMP_NUM
group by Assignment.EMP_NUM;