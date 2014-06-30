#建库
create database cfs;
use cfs;

#分类
create table KIND(
id int primary key auto_increment,
name varchar(20));

insert into KIND(name,k_id) values('food');
insert into KIND(name,k_id) values('other');
#类型
create table TYPE(
id int primary key auto_increment,
name varchar(20) unique,
k_id int,
foreign key(k_id) references KIND(id)
);
#食品类型
insert into TYPE(name,k_id) values('水果类',1);
insert into TYPE(name,k_id) values('蔬菜类',1);
insert into TYPE(name,k_id) values('谷物类',1);
insert into TYPE(name,k_id) values('茶饮',1);
insert into TYPE(name,k_id) values('药材类',1);
insert into TYPE(name,k_id) values('药物',1);
insert into TYPE(name,k_id) values('test1',1);
insert into TYPE(name,k_id) values('test2',1);
#其他类型
insert into TYPE(name,k_id) values('儿童清火',2);
insert into TYPE(name,k_id) values('症状分析',2);
insert into TYPE(name,k_id) values('饮食习惯',2);
insert into TYPE(name,k_id) values('体质差异',2);
insert into TYPE(name,k_id) values('论坛',2);
insert into TYPE(name,k_id) values('TEST1',2);

#内容
create table COMMENT(
id int primary key auto_increment,
name varchar(50) not null unique,
comment text,
des_img1 MediumBlob,
des_img2 MediumBlob,
t_id int,
foreign key(t_id) references TYPE(id)
);