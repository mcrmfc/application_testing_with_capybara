Feature: Demo Capybara Asynch Matcher

  Scenario: Wait for text to be appended to element
    When I visit a page that makes an element visible with a delay
    Then Capybara waits for the element to be visible
