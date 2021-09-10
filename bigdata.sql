USE bigdata;

CREATE TABLE employee(
	empid INT auto_increment primary key,
    empname VARCHAR(50),
    empphone VARCHAR(13),
    empaddr VARCHAR(50)
    );
    
INSERT INTO employee(empname, empphone, empaddr) 
VALUES("춘향이","010-5678-9012","청주시 흥덕구"),
("황진이","010-3456-7890","청주시 청원구");
SELECT * FROM employee;

SELECT empname, empaddr From employee;

select * from employee where empname = "황진이";
select * from employee where empaddr Like "%청주시%";

update employee set empaddr = "청주시 서원구" where empname ="홍길동";
select * from employee;

delete from employee;
drop table employee;
truncate table employee;