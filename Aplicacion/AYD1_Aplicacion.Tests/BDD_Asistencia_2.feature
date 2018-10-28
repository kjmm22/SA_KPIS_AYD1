Feature: BDD_Asistencia_2
	In order to record my attendance
	As a teacher
	I want to log-in and register it

@validarTipoUsuarioMaestroCoordinador
Scenario: Register Teacher's Attendance 
	Given teacher's profile
	When the teacher logs in
	Then register teacher's attendance
