SELECT first_name
FROM employees
ORDER BY substr(first_name, -2, 2) ASC
;