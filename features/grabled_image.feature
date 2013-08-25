Feature: StoryPass Grabled Image View
  In order to view a Grabled Image produced by StoryPass Demo
  A visitor
  Should come to the Grabled Image View Page

  Scenario: Visit the Grabled Image View Page
    Given I am on the homepage
    And I want to view a grabled image
    And I click "View Grabled Image"
    Then I should be on the show grabled image page
    And I should see a grabled image
