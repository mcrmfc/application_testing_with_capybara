require 'bundler/setup'
require 'capybara'

session = Capybara::Session.new :selenium
session.visit('http://capybara.local/html/chapter4/html5.html')
session.click_on 'Play'
raise 'song not playing' unless session.find('#log') == 'playing'
