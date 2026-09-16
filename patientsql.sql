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

-- show all admission that lasted more than two weeks 
select week (`Date of Admission`,`Discharge Date`)
from `admissiontable sql`
where week(`Date of Admission`) > 14;

select * from `admissiontable sql`;

-- retrive all admission that occured in the year 2022
select * from `admissiontable sql`
where`Date of Admission` between '2022-01-01' and '2022-01-01';

-- count the total number of admissions handed by each doctor
select Doctor,count(`Date of Admission`) from `admissiontable sql`
group by 1
order by 2 desc;

-- determine which year has the highest number of admission 
select Year(`Date of Admission`) as admission_count, count(*) as admitted from `admissiontable sql`
group by Year(`Date of Admission`)
order by count(*) desc;

-- show the average billing amount for each admission type
select avg,`Billing Amount`(`Admission Type`)as average_billing 
from `admissiontable sql`
group by `Admission Type`







