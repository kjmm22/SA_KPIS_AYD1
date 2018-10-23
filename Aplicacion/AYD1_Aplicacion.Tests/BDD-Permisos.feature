Feature: BDD-Permisos
	In order to check a Permission
	As a Director 
	I want to be logged in
	To check and Authorizes or Denies Permission

@S1
Scenario: Director Authorizes or Denies Permission
	Given A permission not checked
	And A director logged in
	When I press pending permits 
	Then I select a permission
	Then The text of the permission is displayed on the screen
	And I can authorizes or denies Permission

@S2
	Scenario: Teacher Enter Application for Permission
	Given I have to enter application for permission
	And I teacher logged in
	When I press enter permission
	Then A textbox is displayed on the screen
	Then I click finish to enter application for permission
	And I must wait for the director to authorize or deny permission

