##You can use this example to play around with the different matching strategies
#in Caybara 2.1
require 'bundler/setup'
require 'capybara'

page = Capybara::Session.new :selenium
page.visit('http://capybara.local/html/chapter2/visibility.html')

Capybara.match = :smart
#Capybara.exact = false
#session.find('.result')

page.has_selector? '.result', { :visible => true, :text => 'Match 1' }
page.fill_in 'complete this', :with => 'foobar'
page.fill_in 'complete this ', :with => 'bazqux'
