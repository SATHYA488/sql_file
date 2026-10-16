select * from  students as s inner join enrollment as e on e.course_id = s.stud_id;

select s.stud_id ,s.studname , c.coursename ,c.trainername from students as s inner join enrollment as e on s.stud_id = e.enroll_id inner join course as c on c.trainername = s.studname; 
select c.course_id ,c.coursename from course as c inner join enrollment as e on e.course_id = c.coursename;

