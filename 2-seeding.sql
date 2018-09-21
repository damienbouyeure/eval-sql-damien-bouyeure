INSERT INTO `year` (`id`, `label`) VALUES
(1, 'First year (Bsc)'),
(2, 'Second year (Bsc Hons)'),
(3, 'Third year (Msc)');

INSERT INTO `module` (`id`, `name`, `year`) VALUES
(1, 'linux', 1),
(2, 'docker', 1),
(3, 'symfony', 2),
(4, 'asp.net core', 2),
(5, 'aspect oriented architecture', 3),
(6, 'ddd and hexagonal architecture', 3);

INSERT INTO `student` (`id`, `firstname`, `lastname`) VALUES
(1, 'Olivier', 'Martin'),
(2, 'Pierre', 'Martin'),
(3, 'Jacques', 'Martin'),
(4, 'Martin', 'François'),
(5, 'Jennifer', 'Garner');


INSERT INTO `enrolment` (`id_student`, `id_year`, `from`, `to`) VALUES
(1, 1, '2015-01-01', '2015-12-31'),
(1, 2, '2016-01-01', '2016-12-31'),
(1, 3, '2017-01-01', '2017-12-31'),
(2, 1, '2015-01-01', '2015-12-31'),
(2, 2, '2016-01-01', '2016-12-31'),
(2, 3, '2017-01-01', '2017-12-31'),
(3, 2, '2017-01-01', '2017-12-31');

INSERT INTO `assessment` (`id_module`, `id_student`, `attempted`, `passed`, `grade`) VALUES
(1, 1, '2015-08-31', NULL, 4),
(1, 2, '2015-08-20', '2015-10-01', 10),
(2, 1, '2015-08-21', '2015-10-01', 15),
(2, 2, '2015-07-21', NULL, 7),
(3, 1, '2016-09-01', '2016-10-25', 12),
(3, 2, '2016-10-01', '2016-11-01', 11),
(3, 3, '2017-08-21', '2017-09-21', 11),
(4, 1, '2016-05-20', NULL, 7),
(5, 1, '2017-11-01', '2017-12-20', 11),
(5, 2, '2017-02-03', '2017-05-03', 17);

