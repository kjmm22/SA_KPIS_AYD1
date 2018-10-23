Feature: TareasQuiz
	In order to load a quiz
	As a proffesor
	I want to press a button and validate the file

@loadquizdirector
Scenario: Load a Quiz
	Given A file
	When i press the load button
	Then The type of the file should be validated