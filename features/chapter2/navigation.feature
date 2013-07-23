Feature: Capybara Navigation API Examples using Click

  Scenario: The 'click_on' can locate an element by id
    When I click on a link with an id "myanchor"
    Then the navigation is successful

  Scenario: The 'click_on' can locate an element using text
    When I click on a link with text "Click This Anchor"
    Then the navigation is successful

  Scenario: The 'click_on' can locate an element using title attribute
    When I click on a link with title "myanchorname"
    Then the navigation is successful

  Scenario: The 'click_on' can locate an element using value attribute
    When I click on a button with value "Click This Button"
    Then the navigation is successful
