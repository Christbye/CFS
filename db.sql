#����
create database cfs;
use cfs;

#����
create table KIND(
id int primary key auto_increment,
name varchar(20));

insert into KIND(name,k_id) values('food');
insert into KIND(name,k_id) values('other');
#����
create table TYPE(
id int primary key auto_increment,
name varchar(20) unique,
k_id int,
foreign key(k_id) references KIND(id)
);
#ʳƷ����
insert into TYPE(name,k_id) values('ˮ����',1);
insert into TYPE(name,k_id) values('�߲���',1);
insert into TYPE(name,k_id) values('������',1);
insert into TYPE(name,k_id) values('����',1);
insert into TYPE(name,k_id) values('ҩ����',1);
insert into TYPE(name,k_id) values('ҩ��',1);
insert into TYPE(name,k_id) values('test1',1);
insert into TYPE(name,k_id) values('test2',1);
#��������
insert into TYPE(name,k_id) values('��ͯ���',2);
insert into TYPE(name,k_id) values('֢״����',2);
insert into TYPE(name,k_id) values('��ʳϰ��',2);
insert into TYPE(name,k_id) values('���ʲ���',2);
insert into TYPE(name,k_id) values('��̳',2);
insert into TYPE(name,k_id) values('TEST1',2);

#����
create table COMMENT(
id int primary key auto_increment,
name varchar(50) not null unique,
comment text,
des_img1 MediumBlob,
des_img2 MediumBlob,
t_id int,
foreign key(t_id) references TYPE(id)
);