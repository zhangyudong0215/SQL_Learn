update salaries
set salary = salary * 1.1
where emp_no in (
    select emp_no
    from emp_bonus
)
;