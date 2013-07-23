Feature: Demo Capybara Hover API

  Scenario: Capybara Hover on Element using CSS Hover
    When I hover over an element whose color changes on hover using CSS
    Then I see the color change

  Scenario: Capybara Hover on Element using JS MouseEnter
    When I hover over an element whose color changes on hover using JS
    Then I see the color change
