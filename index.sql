create database IPT;

create table Student(
	Seatno varchar(20) primary key,
	Name varchar(20) not null,
	FatherName varchar(20) not null,
	Address varchar(max) not null
);

insert into Student(Seatno, Name, FatherName, Address) values('EP15', 'Saif', 'Kashan','UBIT');
insert into Student(Seatno, Name, FatherName, Address) values('EP16', 'Ali', 'Kashan','UBIT');
insert into Student(Seatno, Name, FatherName, Address) values('EP17', 'Haseeb', 'Kashan','UBIT');
select * from Student;

create table Subject(
	ID int primary key identity(500,1),
	Subject_Name varchar(20) not null,
	Theory_credit_hour int not null,
	Lab_creatit_hour int not null
);

insert into Subject(Subject_Name,Theory_credit_hour, Lab_creatit_hour) values('IPT',16, 10);

select * from Subject;




create table Enrollment2(
	ID int primary key identity(100,1),
	Seatno varchar(20) not null,
	SubjectId int not null,
	Theory_Marks int not null,
	Lab_Marks int not null,	
	constraint fk_Enrollment_Student2 Foreign Key(Seatno) references Student(Seatno),
	constraint fk_Enrollment_Subject2 Foreign Key(SubjectId) references Subject(ID),
	constraint unique_enrollment Unique(Seatno, SubjectId),
);   


insert into Enrollment2(Seatno,SubjectId, Theory_Marks, Lab_Marks) values('EP16' ,1000, 10, 5);
select *  from Student;
select *  from Subject;
select * from Enrollment2;

