Feature: We want students to manage (CRUD) topics. 

Scenario: As a logged out user, I want to see the list topics page as the homepage.
  Given I visit "/"
  Then I should see "All Topics"

Scenario: Adding a Topic
  Given I visit "/"
  When I click "New Topic"
    And I fill in the field "title" with the text "My Topic"
    And I click "Crear Topic"
  Then I should see "All Topics"
    And I should see "My Topic"
