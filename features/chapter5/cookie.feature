Feature: Access Selenium Driver Directly to Obtain Cookie Information

  Scenario: List all cookies
    When I visit a page that sets a Cookie
    Then I can access the cookie using Selenium
