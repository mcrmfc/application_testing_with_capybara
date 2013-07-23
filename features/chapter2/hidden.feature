Feature: Capybara Finders API - Multiple Matches with Hidden Elements

  Scenario: Find visible items in search results
    Given I am on a page with some hidden result elements
    When I search for visible results
    Then the correct number of matches is found
