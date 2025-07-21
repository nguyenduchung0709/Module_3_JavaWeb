-- Hiển thị số lượng sinh viên từng nơi 
use quanlysinhvien;
SELECT 
    address, COUNT(studentid) AS 'SỐ LƯỢNG HỌC VIÊN'
FROM
    student
GROUP BY address;

-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
SELECT 
    s.studentid, s.studentname, AVG(mark)
FROM
    student s
        JOIN
    mark m ON s.studentid = m.studentid
GROUP BY s.StudentID , s.StudentName;

-- Hiển thị điểm trung bình các môn học của mỗi học viên có điểm trên 15
SELECT 
    s.studentid, s.studentname, AVG(mark)
FROM
    student s
        JOIN
    mark m ON s.studentid = m.studentid
    group by s.studentid, s.StudentName
    having avg(mark) > 15; 

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);







