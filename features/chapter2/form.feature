Feature: Capybara Form API

  Scenario: Complete and submit a simple form
    Given I visit a page with a simple form
    When I complete and submit the form
    Then the submission is successful
