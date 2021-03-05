create database New_Std_Info;
go
use New_Std_Info;
go

create table Student  -- create student table
(Sno  char (8) primary key, sname char (50) not null unique, ssex char(2) default 'M' check (Ssex = 'M' or Ssex = 'F'),
Sage tinyint check(Sage > 13 and Sage < 50),
sdept char(20));



create table course -- creating course table
(
Cno char(2) primary key,
cname varchar(50), -- course name
cpno char(2), -- optional course number
ccredit tinyint); --credit of the course


create table Score       --create score table
(Sno char(8),           --student number
 Cno char(2),         --course number
 grade tinyint,           --score
 constraint pk_grade primary key(sno,cno),
 constraint fk_stuid foreign key(sno) references student(sno),
 constraint fk_course foreign key(cno) references course(cno),
 constraint ck_grade check(grade>=0 and grade<=100) )
go


 insert into Student(Sno,sname, ssex,sage,sdept) values('95001', 'Sam', 'M', 20, 'CS')
insert into Student(Sno,sname, ssex,sage,sdept) values('95002', 'Irish', 'F', 19, 'IS')
insert into Student(Sno,sname, ssex,sage,sdept) values('95003', 'Arya', 'F', 18, 'MA')
insert into Student(Sno,sname, ssex,sage,sdept) values('95004', 'Jack', 'M', 19, 'IS')
insert into Student(Sno,sname, ssex,sage,sdept) values('95005', 'Ava', 'F', 18, 'CS ')
insert into course(Cno, cname,ccredit,cpno) values('1', 'Data structure', 4, '5')
insert into course(Cno, cname,ccredit,cpno) values('2', 'Math', 6, null)
insert into course(Cno, cname,ccredit,cpno) values('3', 'Info System', 3, '1')
insert into course(Cno, cname,ccredit,cpno) values('4', 'Operating System', 4, '6')
insert into course(Cno, cname,ccredit,cpno) values('5', 'Data structure', 4, '7')
insert into course(Cno, cname,ccredit,cpno) values('6', 'Data processing', 3, null)
insert into course(Cno, cname,ccredit,cpno) values('7', 'Java', 4, '6')
insert into Score(Sno,Cno,grade) values('95001', '1' ,92)
insert into Score(Sno,Cno,grade) values('95001', '2' ,85)
insert into Score(Sno,Cno,grade) values('95001', '3' ,88)
insert into Score(Sno,Cno,grade) values('95002', '2' ,90)
insert into Score(Sno,Cno,grade) values('95002', '3' ,80)
insert into Score(Sno,Cno,grade) values('95003', '2' ,85)
insert into Score(Sno,Cno,grade) values('95004', '1' ,58)
insert into Score(Sno,Cno,grade) values('95004', '2' ,85)