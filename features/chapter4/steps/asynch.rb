require 'time'
require 'time'

def wait_for(wait = 8)
  timeout = Time.new + wait

  while (Time.new < timeout)
    return if (yield)
  end
  raise "Condition not met within #{wait} seconds"
end

When(/^I visit a page that makes an element visible with a delay$/) do
  visit 'http://localhost/html/chapter4/asynch.html'
end

Then(/^Capybara waits for the element to be visible$/) do
  #For illustration purposes show a number of different options in single step - not best practice ;-)
  #New functionality in 2.1 means that so long as an element is hidden it would not get returned so we demonstrate how you can handle this situation when ignore_hidden_elements is set to false i.e. where hidden elements would get returned. All the methods below wait for the content to be visible
  Capybara.ignore_hidden_elements = false
  find('.section').visible?.should == false #demonstrates this returns immediately
  begin
    find('.section', :visible => true) #This will error as only waits for default timeout of 2 seconds
  rescue => e
    e.should be_kind_of Capybara::ElementNotFound
  end
  find('.section', :visible => true, :wait => 6, :text => 'Capybara R', :match => :first)
  wait_for(6) { find('.section').visible? }
  Capybara.ignore_hidden_elements = true #set this back as it is part of Capybara's global state
end
