use quanlysinhvien;
select *
from subject
where Credit >= all (select Credit from subject);

select subject.subId, SubName, Credit, Status from Subject join mark on subject.SubId = mark.SubId
where Mark>= all (select Mark from mark);

select StudentName, Address, Phone, Status, avg(Mark) as avgmark from mark
    join student on mark.StudentId = student.StudentId
    group by mark.StudentId order by avgmark desc;