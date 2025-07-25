use quanlybanhang;
CREATE TABLE customer (
    cid INT AUTO_INCREMENT PRIMARY KEY,
    cname VARCHAR(25),
    cage TINYINT
);

CREATE TABLE orders (
    oid INT AUTO_INCREMENT PRIMARY KEY,
    cid INT,
    odate DATETIME,
    ototalprice INT,
    FOREIGN KEY (cid)
        REFERENCES customer (cid)
);

CREATE TABLE products (
    pid INT AUTO_INCREMENT PRIMARY KEY,
    pname VARCHAR(25),
    pprice INT
);

CREATE TABLE orderdetails (
    oid INT,
    pid INT,
    odQTY INT,
    FOREIGN KEY (oid)
        REFERENCES orders (oid),
    FOREIGN KEY (pid)
        REFERENCES products (pid)
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


    