Feature: BDD_Asistensia
	In order to make sure a teacher came to the school
	As a principal
	I want to have a register of the attendance of them

@mytag
Scenario: Theacher's Attendance
	Given a principal profile
	When she or he logs in
	Then a record appears with the teacher's assistance
