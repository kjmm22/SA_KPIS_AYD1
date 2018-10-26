Feature: BDDRestriccionCatedratico
	In order to restrict the work schedule
	As a teacher 
	I want to enter the day and time when I can not work
	To add, update and delete my schedule.

@AgregarHorario
Scenario: Add schedule restriction
	Given a restriction on my schedule
	When im logged in
	Then i create a new restriction on the page

@ModificarHorario
Scenario: Modify schedule restriction
	Given an existing schedule restriction
	When I located the schedule restriction
	And i press modify
	Then i can modify the specific schedule restriction

@BorrarHorario
Scenario: Delete schedule restriction
	Given an existing schedule restriction
	When i located the schedule restriction
	And i press delete
	Then the especific schedule restriction is deleted
