Given(/^I find an element using a CSS selector$/) do
  visit 'http://capybara.local/html/chapter2/finders.html'
end

When(/^I click on the element$/) do
  find('#mydiv').click
end

Then(/^the click event is invoked$/) do
  alert = page.driver.browser.switch_to.alert
  alert.accept
end
