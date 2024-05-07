create database project;
use project;
select * from finance_1;
select * from finance_2;
select * from merged_finance;  

-- kpi 1- Year wise loan amount Stats

select year(str_to_date(issue_d,'%m/%d/%Y')) as issue_year, sum(loan_amnt) as loan_amount from merged_finance group by issue_year order by issue_year;

-- kpi 2- Grade and sub grade wise revol_bal

select grade,sub_grade,sum(revol_bal) as revolving_balance from merged_finance group by grade,sub_grade;

-- kpi 3- Total Payment for Verified Status Vs Total Payment for Non Verified Status

SELECT verification_status,sum(total_pymnt) as total_payment from merged_finance group by verification_status;

-- kpi 4- State wise and month wise loan status

SELECT addr_state,loan_status,count(loan_status) from merged_finance group by addr_state,loan_status;

-- kpi 5- Home ownership Vs last payment date stats

SELECT home_ownership,last_pymnt_d,COUNT(*) AS count_of_records FROM merged_finance GROUP BY home_ownership,last_pymnt_d;






    







