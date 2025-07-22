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

-- Hien thi cac thong tin cua cac hoa don trong bang Orders
SELECT 
    *
FROM
    orders;

-- Hien thi danh sach khach hang da mua hang va cac san pham duoc mua
SELECT 
    c.cid, o.oid, c.cname, p.pid, p.pname
FROM
    customer c
        JOIN
    orders o ON c.cid = o.cid
        JOIN
    orderdetails od ON o.oid = od.oid
        JOIN
    products p ON p.pid = od.pid;

-- Hien thi khach hang chua mua hang 
SELECT 
    c.cid, c.cname
FROM
    customer c
        LEFT JOIN
    orders o ON c.cid = o.cid
WHERE
    o.oid IS NULL;
    
-- Hien thi ma hoa don, ngay ban va gia tien
SELECT 
    o.oid as orderID, o.odate as orderDate, sum(p.pprice * od.odqty) as total_price
FROM
    orders o
        JOIN
    orderdetails od ON o.oid = od.oid
    join products p on od.pid = p.pid 
    group by o.oid, o.odate;
    