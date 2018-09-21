select concat_ws(' ', s.firstname, s.lastname) as student_name,
       case
           when round(AVG(a.grade),2)<5 then  "D"
            when round(AVG(a.grade),2)<10 then "c"
            when round(AVG(a.grade),2)<15 then "b"
           when round(AVG(a.grade),2)<=20 then "a"
        end as note
    , y.label
from student s left join enrolment e on s.id = e.id_student right join year y on e.id_year = y.id left join module m on y.id = 
m.year left join assessment a on s.id = a.id_student and m.id=a.id_module group by student_name, y.label
order by round(AVG(a.grade),2) desc, student_name asc;
