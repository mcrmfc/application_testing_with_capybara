When(/^I hover over an element whose color changes on hover using CSS$/) do
  visit 'http://localhost/html/chapter5/hover.html'
  puts find('#box1').native.style('background-color')
  find('#box1').hover 
end

When(/^I hover over an element whose color changes on hover using JS$/) do
  visit 'http://localhost/html/chapter5/hover.html'
  puts find('#box2').native.style('background-color')
  find('#box2').hover 
end

Then(/^I see the color change$/) do
  puts find('#box1').native.style('background-color')
  puts find('#box2').native.style('background-color')
end

When(/^I visit a page that sets a Cookie$/) do
  visit 'http://localhost/html/chapter5/cookie.html'
end

Then(/^I can access the cookie using Selenium$/) do
  puts page.driver.browser.manage.all_cookies
end
