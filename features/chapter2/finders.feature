Feature: Capybara Finder API

  Scenario: Perform find using a selector and then click
    Given I find an element using a CSS selector
    When I click on the element
    Then the click event is invoked
