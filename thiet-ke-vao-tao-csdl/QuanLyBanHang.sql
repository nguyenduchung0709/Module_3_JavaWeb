use quanlybanhang;
create table customer (
	cid int auto_increment primary key,
    cname varchar(25),
    cage tinyint
);

create table orders (
	oid int auto_increment primary key,
    cid int,
    odate datetime,
    ototalprice int,
    foreign key (cid) references customer(cid)
);

create table products (
	pid int auto_increment primary key,
    pname varchar(25),
    pprice int
);

create table orderdetails (
	oid int ,
    pid int ,
    odQTY int,
    foreign key (oid) references orders(oid) ,
    foreign key (pid) references products(pid) 
);

insert into customer (cname, cage) 
values ('Minh Quan', 10),
	('Ngoc Oanh', 20),
	('Hong Ha',50);
    
insert into orders(cid, odate)
values (1, '2006-03-21'),
	(2, '2006-03-23'),
	(1, '2006-03-16');
    
insert into products(pname, pprice)
values ('Mat Giat', 3),
	('Tu Lanh', 5),
	('Dieu Hoa', 7),
	('Quat', 1),
	('Bep Dien', 2);
    
insert into orderdetails(oid, pid, odQTY)
values (1, 1, 3),
		(1, 3, 7),
		(1, 4, 2),
		(2, 1, 1),
		(3, 1, 8),
		(2, 5, 4),
		(2, 3, 3);
        
	
    
