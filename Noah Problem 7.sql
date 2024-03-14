Select Proj_Num, SUM(Assign_hours) as Total_Hours, SUM(Assign_Charge) as Total_Charge
From assignment
Group by Proj_num
Order by Proj_Num;