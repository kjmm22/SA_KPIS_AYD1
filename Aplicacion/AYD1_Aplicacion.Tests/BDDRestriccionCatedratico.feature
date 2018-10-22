Feature: BDDRestriccionCatedratico

Feature: BDDRestriccionCatedratico
	
	In order to restrict the work schedule
	As a teacher 
	I want to enter the day and time when I can not work
	To check and comment a exam that is upload

@testExam
Scenario: check a math exam of a professor
	Given A math exam not checked
	And a director logged in
	And a not commented exam
	When I select a exam not checked
	Then i get the path of a file
	And i display a file in another tab
	And i can comment the selected exam