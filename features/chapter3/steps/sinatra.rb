Given(/^I am on a book review site$/) do
  visit('/form')
end

When(/^I submit a book review$/) do
  fill_in 'name', :with => 'Matt'
  fill_in 'title', :with => 'Catch 22'
  fill_in 'review', :with => 'Alright I guess....'
  select '20 - 50', :from => 'age'
  click_on 'Submit'
end

Then(/^I should see the saved details confirmed$/) do
  page.should have_text 'You submitted the following on:'
  find('#name').should have_text 'Matt'
  find('#age').should have_text '20-50'
  find('#review').should have_text 'Alright I guess....'
  find('#title').should have_text 'Catch 22'
end
