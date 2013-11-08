Feature: Manage Assignments
  In order to keep track of their assignments
  Students wants to create and edit assignments

Scenario: Home page has a new assignment link
  Given I visit "/"
  Then I should see "New Assignment"

Scenario: Create Assignment
  Given I visit "/"
  When I follow "New Assignment"
    And I fill in "Title" with "Learn Cucumber"
    And I fill in "Details" with "Build a Feature and make it pass"
    And I press "Crear Assignment"
  Then I should be on the home page
    And I should see "My Assignments"

Scenario: Finish an Assignment
  Given I have an "Assignment" with the "title" "Learn Cucumber"
    And I visit "/"
  When I follow "Learn Cucumber"
    And I check "Done"
    And I click "Actualizar Assignment"
  Then I Should be on the home page
    And I should see "Completed Assignments"