USE `the detective club murder`;
DROP procedure IF EXISTS `introduceSuspects`;

DELIMITER $$
USE `the detective club murder`$$
CREATE PROCEDURE `introduceSuspects` ()
BEGIN
	select fname, lname, s.description as suspect, m.description as motives from suspect as s join motives as m on s.fname = m.suspect;
END$$

DELIMITER ;

USE `the detective club murder`;
DROP procedure IF EXISTS `getQuestions`;

DELIMITER $$
USE `the detective club murder`$$
CREATE PROCEDURE `getQuestions` ()
BEGIN
	select id, suspect, question from qna;
END$$

DELIMITER ;

USE `the detective club murder`;
DROP procedure IF EXISTS `getAnswer`;

DELIMITER $$
USE `the detective club murder`$$
CREATE PROCEDURE `getAnswer` (IN id integer(40))
BEGIN
	select id, suspect, question, answer from qna where id = qna.id;
END$$

DELIMITER ;

USE `the detective club murder`;
DROP procedure IF EXISTS `getConfession`;
DELIMITER $$
USE `the detective club murder`$$
CREATE PROCEDURE `getConfession` (IN suspect varchar(40))
BEGIN
	select suspect, confession from confession where suspect = confession.suspect;
END$$

DELIMITER ;