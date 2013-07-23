Feature: Capybara Query API

  Scenario: Find items in page using Capybara Query API
    Given I am on a page with some search results
    When I search for content using Capybara's query API
    Then the correct elements are located
