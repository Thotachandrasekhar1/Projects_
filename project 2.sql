create database library;


use library;
drop table if exists publisher;
create table publisher(
publishername varchar(265) primary key ,
publisheraddress varchar(265),
publishernumber varchar(265));
select * from publisher;

create table borrower(
borrowercardno int primary key auto_increment,
borrowername varchar(265),
borroweraddress varchar(265),
borrowerphoneno varchar(265));
select * from borrower;

create table branch(
branchid int primary key auto_increment,
branchname varchar(260),
branchaddress varchar(300));
select * from branch;


create table book(
bookid int primary key auto_increment,
booktitle varchar(265) ,
publishername varchar(265),
foreign key (publishername) references publisher(publishername));
drop table  if exists authors  ;
select * from book;




create table authors(
authorid int primary key auto_increment ,
bookid int,
authorname varchar(265),
foreign key (bookid) references book(bookid));
select * from authors;

select * from authors;

create table book_copies(
copies_id int  primary key auto_increment ,
copies_book_id int ,
copies_branch_id int,
copies_no_of_copies int,
foreign key (copies_book_id) references book(bookid),
foreign key (copies_branch_id) references branch(branchid));

select * from book_copies;
drop table if exists book_loans;


create table book_loans(
loans_id int primary key auto_increment,
loans_bookid int,
loans_branchid int,
loans_cardno int,
loans_dateout date,
loans_duedate date,
foreign key (loans_bookid) references book(bookid),
foreign key (loans_branchid) references branch(branchid),
foreign key (loans_cardno) references borrower(borrowercardno));

select * from book_loans;


