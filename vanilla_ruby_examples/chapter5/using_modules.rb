require 'bundler/setup'
require 'capybara/dsl'
require 'rspec/expectations'

Capybara.default_driver = :selenium

module MyModule
  include Capybara::DSL
  include RSpec::Matchers

  def play_song
    visit 'http://capybara.local/html/chapter4/html5.html'
    click_on 'Play'
    find('#log').should have_text 'playing'
  end
end

class Runner

  include MyModule

  def run
    play_song
  end

end

Runner.new.run

