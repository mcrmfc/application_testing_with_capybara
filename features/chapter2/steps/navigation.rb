When(/^I click on a link with an id "(.*?)"$/) do |arg1|
  visit 'http://capybara.local/html/chapter2/click.html'
  click_on 'myanchor'
end

When(/^I click on a link with text "(.*?)"$/) do |arg1|
  visit 'http://capybara.local/html/chapter2/click.html'
  click_on 'Click this Anchor'
end

When(/^I click on a link with title "(.*?)"$/) do |arg1|
  visit 'http://capybara.local/html/chapter2/click.html'
  click_on 'myanchortitle'
end

When(/^I click on a button with value "(.*?)"$/) do |arg1|
  visit 'http://capybara.local/html/chapter2/click.html'
  click_link_or_button 'Click This Button'
end

Then(/^the navigation is successful$/) do
  alert = page.driver.browser.switch_to.alert
  alert.accept
end
