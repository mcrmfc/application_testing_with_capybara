require 'time'

def wait_for(wait = 8)
  timeout = Time.new + wait

  while (Time.new < timeout)
    return if (yield)
  end
  raise "Condition not met within #{wait} seconds"
end

Given(/^I visit a page with a custom HTML(\d+) audio player$/) do |arg1|
  visit 'http://capybara.local/html/chapter4/html5.html'
end

When(/^I click to play a song$/) do
  click_on 'Play'
end

Then(/^the song plays$/) do
  find('#log').should have_text 'playing'
end

Given(/^I visit an application page with a custom HTML(\d+) audio player$/) do |arg1|
  visit 'http://capybara.local/html/chapter4/html5_jsobject.html'
end

Then(/^the song plays \(event fires\)$/) do
  wait_for do
    page.evaluate_script('audioDebug.state') == 'playing'
  end
end
