create table student
(
    id   char(3)   primary key not null,
    name varchar2(20),
    age number,
    sex char(3) check (sex = '男' or sex = '女')
);
create table subject
(
    id char(4) primary key not null,
    subject varchar(20),
    teacher varchar(20),
    description varchar(50)
);

alter table subject modify (teacher varchar(100));
create table score
(
    id number primary key not null,
    student_id char(3) references student(id),
    subject_id char(4) references subject(id),
    score decimal
);
insert into student values ('001', '张三', 18, '男');
insert into student values ('002', '李四', 20, '女');
insert into subject values ('1001', '语文', '王老师', '本次考试比较简单');
insert into subject values ('1002', '数学', '刘老师', '本次考试比较难');
insert into score values (1, '001', '1001', 80);
insert into score values (2, '002', '1002', 60);
insert into score values (3, '001', '1001', 70);
insert into score values (4, '002', '1002', 60.5);
