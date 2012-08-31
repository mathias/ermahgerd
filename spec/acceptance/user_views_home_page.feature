@javascript
Feature: User views home page

  Scenario: Home page is present
    Given I am on the home page
    Then I should see the welcome message
