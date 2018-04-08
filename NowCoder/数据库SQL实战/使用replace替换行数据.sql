update titles_test
set emp_no = replace(emp_no, 10001, 10005)
where id = 5 and emp_no = 10001
;