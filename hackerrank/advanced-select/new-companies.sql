select  company.company_code,
        company.founder,
        Count(Distinct employee.lead_manager_code) As lmans,
        Count(Distinct employee.senior_manager_code) As smans,
        Count(Distinct employee.manager_code) As mans,
        Count(Distinct employee.employee_code) As emps
        

from employee join company on employee.company_code = company.company_code group by 1,2 order by company.company_code;
