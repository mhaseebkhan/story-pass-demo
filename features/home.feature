Feature: StoryPass Demo Homepage
  In order to view the StoryPass Demo
  A visitor
  Should come to the homepage

  Scenario: Visit the homepage
    Given I am on the homepage
    Then I should see "StoryPass Demo" in "h1"
    And I should see "View Demo" link