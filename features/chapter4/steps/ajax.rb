When(/^I visit a page that loads images asynchronously$/) do
  visit 'http://capybara.local/html/chapter4/ajax.html'
  click_on 'Load'
end

Then(/^I should see all the images load successfully$/) do
  p page.has_selector? :xpath, '//img[4]'
  find('div > img:first-child:nth-last-child(4)')
  all('img').size.should == 4
  page.should have_selector :xpath, '//img[4]'
end
