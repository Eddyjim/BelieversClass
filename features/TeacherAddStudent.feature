Feature <Teacher add a Student>

As a Teacher
I want to add a Student
so that it can be added to the Group
	
Scenario: Succesfull creation of a Student

	Given I am on the Teacher's page
	And I press "New Student"
	And I fill in "Uname" with "Edstudent"
	And I fill in "Name" with "Ed"
	And I fill in "Lastname" with "Jim"
	And I fill in "Password" with "clave"
	Then the page should be redirected
	And the student should be registered

	
