Feature: Capybara Finders API - Multiple Matches

  Scenario: Find items in search results
    Given I am on a page with multiple search results
    When I search for the relevant results
    Then the results are found
