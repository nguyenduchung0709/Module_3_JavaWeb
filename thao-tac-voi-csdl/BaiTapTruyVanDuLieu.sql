-- Hien thi sinh vien co ten bat dau la 'h'
select * from quanlysinhvien.student where s.studentname like 'h%';

-- Hien thi lop hoc bat dau tu thang 12
select * from class where startdate >= '2008-12-01';

-- Hien thi mon hoc co credit tu 3-5 
select * from subject where credit between 3 and 5;

-- Thay doi ma lop sinh vien 'Hung' thanh 2
SET SQL_SAFE_UPDATES = 0;

update student
set classid = '2'
where studentname = 'Hung';

-- Hien thi thong tin giam dan 
SELECT 
    s.studentname, s.studentid, sb.subname, sb.subid, m.mark
FROM
    student s
        JOIN
    mark m ON s.studentid = m.studentid
        JOIN
    subject sb ON m.subid = sb.subid
ORDER BY  m.mark DESC, s.studentname ASC ;
