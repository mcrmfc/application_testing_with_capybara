require 'time'

def wait_for(wait = 8)
  timeout = Time.new + wait

  while (Time.new < timeout)
    return if (yield)
  end
  raise "Condition not met within #{wait} seconds"
end

When(/^I visit a page that makes an element visible with a delay$/) do
  visit 'http://capybara.local/html/chapter4/asynch.html'
end

Then(/^Capybara waits for the element to be visible$/) do
  find('.section', :visible => true)
  #find('.section', :visible => true, :wait => 10, :text => 'Capybara R', :match => :first)
  wait_for(10) { find('.section').visible? }
end
