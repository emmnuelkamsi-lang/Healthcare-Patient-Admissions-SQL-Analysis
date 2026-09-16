SELECT * FROM dap.`patienttable sql1`;
select * from `admissiontable sql`;
-- retrive all patients details where gender is male and age >50

select * from `patienttable sql1`
where Gender ='male' and Age >50;

-- find the highest billing amount and the patient whom has it 
select `Patient ID`, Name ,max(`Billing Amount`)
from `patienttable sql1`
group by 1,2
order by max(`Billing Amount`) desc;

-- count the number of patient by medical condition 
select  `Medical Condition`,count(*) from `patienttable sql1`
group by `Medical Condition`;

-- count the number of patient by gender 
select Gender,count(*) from `patienttable sql1`
group by Gender;
-- count the number of patient by insurance provider
select `Insurance Provider`,count(*) from `patienttable sql1`
group by `Insurance Provider`;

-- find the avg billing amount by medical condition
select avg(`Billing Amount`),`Medical Condition`from `patienttable sql1`
group by `Medical Condition`;

-- show all admissions that lasted more than two weeks

select *, DATEDIFF(`Discharge Date`, `Date of Admission`) as length_of_stay_days
from `admissiontable sql`
where DATEDIFF(`Discharge Date`, `Date of Admission`) > 14;

select * from `admissiontable sql`;

-- retrive all admission that occured in the year 2022
select * from `admissiontable sql`
where `Date of Admission` between '2022-01-01' and '2022-12-31';

-- count the total number of admissions handed by each doctor
select Doctor,count(`Date of Admission`) from `admissiontable sql`
group by 1
order by 2 desc;

-- determine which year has the highest number of admission 
select Year(`Date of Admission`) as admission_year, count(*) as admitted from `admissiontable sql`
group by Year(`Date of Admission`)
order by count(*) desc;

-- show the average billing amount for each admission type
select `Admission Type`, avg(`Billing Amount`) as average_billing
from `admissiontable sql`
group by `Admission Type`;


SELECT * FROM dap.`patienttable sql1`;
select * from `admissiontable sql`;
-- retrive all patients details where gender is male and age >50

select * from `patienttable sql1`
where Gender ='male' and Age >50;

-- find the highest billing amount and the patient whom has it 
select `Patient ID`, Name ,max(`Billing Amount`)
from `patienttable sql1`
group by 1,2
order by max(`Billing Amount`) desc;

-- count the number of patient by medical condition 
select  `Medical Condition`,count(*) from `patienttable sql1`
group by `Medical Condition`;

-- count the number of patient by gender 
select Gender,count(*) from `patienttable sql1`
group by Gender;
-- count the number of patient by insurance provider
select `Insurance Provider`,count(*) from `patienttable sql1`
group by `Insurance Provider`;

-- find the avg billing amount by medical condition
select avg(`Billing Amount`),`Medical Condition`from `patienttable sql1`
group by `Medical Condition`;

-- show all admissions that lasted more than two weeks

select *, DATEDIFF(`Discharge Date`, `Date of Admission`) as length_of_stay_days
from `admissiontable sql`
where DATEDIFF(`Discharge Date`, `Date of Admission`) > 14;

select * from `admissiontable sql`;

-- retrive all admission that occured in the year 2022
select * from `admissiontable sql`
where `Date of Admission` between '2022-01-01' and '2022-12-31';

-- count the total number of admissions handed by each doctor
select Doctor,count(`Date of Admission`) from `admissiontable sql`
group by 1
order by 2 desc;

-- determine which year has the highest number of admission 
select Year(`Date of Admission`) as admission_year, count(*) as admitted from `admissiontable sql`
group by Year(`Date of Admission`)
order by count(*) desc;

-- show the average billing amount for each admission type
select `Admission Type`, avg(`Billing Amount`) as average_billing
from `admissiontable sql`
group by `Admission Type`;

-- =====================================================
-- ADDITIONAL ANALYSIS
-- =====================================================

-- AVERAGE AGE OF PATIENTS BY MEDICAL CONDITION

select `Medical Condition`, avg(Age) as average_age
from `patienttable sql1`
group by `Medical Condition`
order by average_age desc;

-- PATIENT COUNT BY AGE GROUP

select
  case
    when Age < 18 then 'Under 18'
    when Age between 18 and 40 then '18-40'
    when Age between 41 and 60 then '41-60'
    else '60+'
  end as age_group,
  count(*) as patient_count
from `patienttable sql1`
group by age_group
order by patient_count desc;

-- TOP 5 PATIENTS BY BILLING AMOUNT

select `Patient ID`, Name, `Billing Amount`
from `patienttable sql1`
order by `Billing Amount` desc
limit 5;

-- INSURANCE PROVIDER WITH THE HIGHEST TOTAL BILLING AMOUNT

select `Insurance Provider`, sum(`Billing Amount`) as total_billing
from `patienttable sql1`
group by `Insurance Provider`
order by total_billing desc;

-- AVERAGE LENGTH OF STAY PER DOCTOR

select Doctor, avg(DATEDIFF(`Discharge Date`, `Date of Admission`)) as avg_length_of_stay_days
from `admissiontable sql`
group by Doctor
order by avg_length_of_stay_days desc;

-- AVERAGE LENGTH OF STAY PER ADMISSION TYPE

select `Admission Type`, avg(DATEDIFF(`Discharge Date`, `Date of Admission`)) as avg_length_of_stay_days
from `admissiontable sql`
group by `Admission Type`
order by avg_length_of_stay_days desc;

-- ADMISSION TRENDS BY MONTH (ACROSS ALL YEARS)

select Month(`Date of Admission`) as admission_month, count(*) as total_admissions
from `admissiontable sql`
group by admission_month
order by admission_month;







