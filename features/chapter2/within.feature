Feature: Capybara Finders API - Multiple Matches - Scoping

  Scenario: Find items in search results using 'within'
    Given I am on a page with multiple sets of search results
    When I search for results within a scope
    Then the desired search results are returned
