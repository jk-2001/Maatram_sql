show databases;
create database milkshop;
use milkshop;
create table CUSTOMER(cus_id int primary key auto_increment,cus_name varchar(20),cow_type varchar(16),phone_no varchar(10),account_no bigint);
describe CUSTOMER;
insert into CUSTOMER values(1,'JK','HUTSON',9578970923,699834236);
insert into CUSTOMER values(2,'JAYAKUMAR','AROKIYA',9578970921,699834237);
select* from CUSTOMER;
drop table CUSTOMER;
create table bill_details(bill_id int primary key auto_increment,
							name_ varchar(20) not null,phone_no varchar(10) not null unique,bill_amount bigint not null);
                            describe bill_details;
                            insert into bill_details values(1,'jay',9641281,29000);
                            insert into bill_details (bill_id,name_,phone_no,bill_amount)value(2,'jk',782365326,700000);
					insert into bill_details (bill_id,name_,phone_no,bill_amount)value(3,'surya',98726621,100000);
                            select*from bill_details;
                            update bill_details set name_='jayakumar' where bill_id=1;

                            alter table bill_details rename column bill_amount to amount;
                            alter table bill_details add column bill_date date not null;
							alter table bill_details modify column bill_date datetime not null default now();
							insert into bill_details (bill_id,name_,phone_no,amount)value(4,'teja',9076541234,20000),(5,'deep',987654323,76078);