with cte as(
select * from brokerage_fees as bf
join individual_budgets as ib
on bf.Account_Exe_ID = ib.Employee_Name),
cte1 as(
select sum(Cross_sell_budget) as tot_cross
from cte)
select sum(Amount)*100/sum(Cross_sell_bugdet) as cross_sell_achieve_percent
from cte
where income_class = "Cross Sell"
group by income_class;
