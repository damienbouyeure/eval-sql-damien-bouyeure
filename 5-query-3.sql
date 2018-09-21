select concat_ws('', s.firstname, s.lastname) as student_name, round(AVG(a.grade),2) AS note  from student s left join 
enrolment e on s.id = e.id_student right join year y on e.id_year = y.id left join module m on y.id = m.year left join 
assessment a on s.id = a.id_student and m.id=a.id_module  where   y.label="Second year (Bsc Hons)" group by student_name;
