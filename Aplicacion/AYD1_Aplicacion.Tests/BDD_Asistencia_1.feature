Feature: BDD_Asistencia
	In order to make sure a teacher came to the school
	As a principal
	I want to have a register of the attendance of them

@validarTipoUsuarioDirector
Scenario: Theacher's Attendance
	Given a principal's profile
	When she or he log-in
	Then it verify the principal's profile before a record appears with the teacher's attendance