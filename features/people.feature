Feature: Manage People
  In order to add new People
  As an user
  I want to create and manage people

Scenario: Create valid person
    Given I have people first_name cucumber1, cucumber2
      When I go to the list of people
      Then I should see "cucumber1"
      Then I should see "cucumber2"
Scenario: Given valid Person
    Given I have no People
      And I am on the list of People
      When I follow "New Person"
      When I fill in the "First Name" with "cucumber3"
      When I fill in the "Last Name" with "cucumber last name 3"
      When I fill in the "email" with "cucumber@cucmber.com"
      When I fill in the "notes" with "cucumber mongo_test"
      And I press "Create Person"
      Then I should see "New Pesron created."
      And I should see "cucumber3"
      And I should see "cucumber last name 3"
      And I should see "cucumber@cucmber.com"
      And I should see "cucumber mongo_test"
      And I should have 1 person
