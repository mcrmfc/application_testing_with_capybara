Feature: Using Capybara and Rack-Test to Interact with Sinatra App

  Scenario: Complete Book Review 
    Given I am on a book review site
    When I submit a book review
    Then I should see the saved details confirmed
