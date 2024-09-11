create table employee(emp_id int,first_name varchar(50),last_name varchar(50),birth_date date,sex varchar(10),salary varchar(50),super_id varchar(50),branch_id int,primary key(emp_id),foreign key(super_id,branch_id));
insert into employee (emp_id,first_name,last_name,birth_date,sex,salary,super_id,branch_id) values(100,'David','Wallace','1967-11-17','M','250,000','NULL',1),
(101,'Jan','Levinson','1961-05-11','F','110,000','100',1),
(102,'Michael','Scott','1964-03-15','M','75,000','100',2),
(103,'Angela','Marvin','1971-06-25','F','63,000','102',2),
(104,'Kelly','Kapoor','1980-02-05','F','55,000','102',2),
(105,'Stanley','Hudson','1958-02-19','M','69,000','102',2),
(106, 'Josh','Porter','1969-09-05','M','78,000','100',3),
(107, 'Andy','Bernard','1973-07-22','M','65,000','106',3),
(108, 'Jim','Halpert','1978-10-01','M','71,000','106',3);



create table branch(branch_id int,branch_name varchar(50),mgr_id int(10),mgr_start_date date,primary key(branch_id), foreign key(mgr_id));
insert into branch(branch_id,branch_name,mgr_id,mgr_start_date) values
(1,'Corporate',100,'2006-02-09'),
(2,'Scranton',102,'1992-04-06'),
(3,'Stamford',106,'1998-02-13');

create table client(client_id int,client_name varchar(50),branch_id int,primary key(client_id), foreign key(branch_id));
insert into Client(client_id,client_name,client_id) values
(400,'Dunmore Highschool',2),
(401,'Lackawana Country',2),
(402,'FedEx',3),
(403,'John Daly Law,LLC',3),
(404,'Scranton Whitepages',2),
(405,'Times Newspaper',3),
(406,'FedEx',2);

create table Works_With(emp_id int,client_id int,total_sales varchar(50), foreign key(emp_id, client_id));
insert into Works_With(emp_id,client_id,total_sales) values
(105,400,'55,000'),
(102,401,'267,000'),
(108,402,'22,500'),
(107,403,'5,000'),
(108,403,'12,000'),
(105,404,'33,000'),
(107,405,'26,000'),
(102,406,'15,000'),
(105,406,'130,000');

create table Branch Supplier(branch_id int,supplier_name varchar(50),supply_type varchar(50), foreign key(branch_id));
insert into Branch Supplier(branch_id,supplier_name,supply_type) values
(2,'Hammer Mill','Paper'),
(2,'Uni-ball','Writing Utensils'),
(3,'Patriot Paper','22,500'),
(2,'J.T.Form&labels','Custom Forms'),
(3,'Uni-ball','Writing utensils'),
(2,'Hammer Mill','Paper'),
(3,'Stamford Labels','Custom Forms');
