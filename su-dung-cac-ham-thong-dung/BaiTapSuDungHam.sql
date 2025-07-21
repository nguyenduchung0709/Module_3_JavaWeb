-- Hien thi mon hoc co credit giam dam
SELECT 
    credit, subname
FROM
    quanlysinhvien.subject
GROUP BY credit, subname
ORDER BY credit DESC;
-- Hien thi thong tin mon hoc co diem thi lon nhat

SELECT 
    s.subid, m.mark
FROM
    subject s
        JOIN
    mark m ON s.subid = m.subid
    where m.mark = (select max(mark) from mark);
    
-- Hien thi cac thong tin sinh vien va diem trung binh cua moi sinh vien sap xep giam dan
SELECT 
    s.studentid,
    s.studentname,
    s.address,
    s.phone,
    s.status,
    s.classid,
    AVG(m.mark) AS diem_trung_binh
FROM
    student s
        JOIN
    mark m ON s.StudentID = m.StudentID
GROUP BY s.StudentID , s.studentname , s.address , s.phone , s.status , s.classid
ORDER BY diem_trung_binh DESC;