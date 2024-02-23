SELECT electives.*, students.*, education_result.*
								FROM education_result
								JOIN electives ON education_result.elective_code = electives.elective_code 
								JOIN students ON education_result.student_code = students.student_code 
								WHERE electives.beginning_date > "2022-12-10" AND electives.beginning_date < "2022-12-17"
                                
SELECT students.*
					FROM education_result
					JOIN electives ON education_result.elective_code = electives.elective_code
					JOIN students ON education_result.student_code = students.student_code
					WHERE electives.title = высшая математика

SELECT  electives.title, AVG(assessment) AS average_assessment
						FROM education_result
						JOIN electives ON electives.elective_code = education_result.elective_code
						GROUP BY electives.title