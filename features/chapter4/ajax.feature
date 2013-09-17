Feature: Demonstrate Capybara's Asynchronous Waits

  Scenario: Load images asynchronously from Flickr
    When I visit a page that loads images asynchronously
    Then I should see all the images load successfully
