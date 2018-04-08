/*  解法1  */
delete from titles_test where id in
(
    /*得到应该删除的id结果集*/
    select id from
    titles_test tt ,
    (/*查询出emp_no 对应的多个id的中的最小的id*/
        select emp_no,min(id) as min_id from titles_test
        group by emp_no
        having count(id) > 1
    ) aa
    where tt.id <> aa.min_id and  tt.emp_no=aa.emp_no
    /*id 不是最小的,就是要删除的*/
);

/* 解法2  */
DELETE FROM titles_test WHERE id NOT IN 
(SELECT MIN(id) FROM titles_test GROUP BY emp_no)