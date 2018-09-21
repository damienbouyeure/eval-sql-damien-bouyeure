select s.firstname,s.lastname, y.label from student s left join enrolment e on s.id = e.id_student inner join year y on 
e.id_year = y.id where (e.`from` <= '2017-07-01 00:00:00' and e.`to`>= '2017-07-01 00:00:00') order by s.lastname;
