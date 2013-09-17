Given(/^I am on a page with some search results$/) do
  visit 'http://localhost/html/chapter2/query.html'
end

When(/^I search for content using Capybara's query API$/) do
  #For illustration purposes show a number of different options in single step - not best practice ;-)
  page.has_link? 'Google!'
  page.has_selector? 'div[id=local_results]'
  page.has_xpath? "//div[@id='local_results']"
  page.has_no_selector? '#mock_results'
  page.should have_no_selector '#mock_results'
end

Then(/^the correct elements are located$/) do
  #For illustration purposes show a number of different options in single step - not best practice ;-)
  page.should have_content 'Local Match 1'
  first('#res1').should have_content 'Local Match 1'
  first('#res1')[:class].should == 'result'
  page.should have_link 'Google!'
  page.should have_selector 'div[id=local_results]'
  page.should have_xpath "//div[@id='local_results']"
  page.should have_no_selector '#mock_results'
end
