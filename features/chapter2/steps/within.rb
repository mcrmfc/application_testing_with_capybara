Given(/^I am on a page with multiple sets of search results$/) do
  visit 'http://localhost/html/chapter2/within.html'
end

When(/^I search for results within a scope$/) do
  within('#internet_results') do
    all('.result').each do |elem|
      puts elem.text #printing for demo purposes
    end
  end
end

Then(/^the desired search results are returned$/) do
  #For convenience show a number of different options in single step - not best practice ;-)
  page.should have_content 'Local Match 1'
  first('#res1').should have_content 'Local Match 1'
  first('#res1')[:class].should == 'result'
  page.has_link? 'Google!'
  page.has_selector? 'div[id=local_results]'
  page.has_xpath? "//div[@id='local_results']"
  page.has_no_selector? '#mock_results'
  page.should have_no_selector '#mock_results'
end
