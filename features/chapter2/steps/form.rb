Given(/^I visit a page with a simple form$/) do
  visit 'http://localhost/html/chapter2/form.html'
end

When(/^I complete and submit the form$/) do
  fill_in 'User Forename', :with => 'Matthew'
  fill_in 'User Surname', :with => 'Robbins'
  select 'Mr', :from => 'user_title'
  choose 'Over 16'
  check 'consent'
  click_on 'Go'
end

Then(/^the submission is successful$/) do
  alert = page.driver.browser.switch_to.alert
  alert.accept
end
