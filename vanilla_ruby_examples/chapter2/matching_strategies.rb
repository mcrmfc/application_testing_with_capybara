require 'bundler/setup'
require 'minitest/autorun'
require 'capybara'
dir = File.dirname(__FILE__)
$LOAD_PATH.unshift "#{dir}/../lib"

class CapybaraMatchingStrategyTest < MiniTest::Unit::TestCase

  def setup
    @page = Capybara::Session.new :selenium
    @page.visit('http://localhost/capybara/html/chapter2/visibility.html')
  end

  def test_first_takes_first_match_partial_or_exact
    Capybara.match = :first
    Capybara.exact = false
    @page.has_selector? '.result', { :visible => true, :text => 'Match 1' }
    @page.fill_in 'please complete this', :with => 'foobar'
    @page.fill_in 'please complete', :with => 'bazqux'
    assert_equal 'bazqux', @page.find('#text1').value
    assert_equal '', @page.find('#text2').value
  end

  def test_prefer_exact_takes_the_first_exact_then_first_partial_match
    Capybara.match = :prefer_exact
    Capybara.exact = false
    @page.has_selector? '.result', { :visible => true, :text => 'Match 1' }
    @page.fill_in 'please complete this', :with => 'foobar'
    @page.fill_in 'please complete', :with => 'bazqux'
    assert_equal 'foobar', @page.find('#text2').value
    assert_equal 'bazqux', @page.find('#text1').value
  end


  def test_smart_will_prefer_exact_but_raise_ambiguous_error_for_multiple_matches
    Capybara.match = :smart
    Capybara.exact = false
    @page.has_selector? '.result', { :visible => true, :text => 'Match 1' }
    @page.fill_in 'please complete this', :with => 'foobar'
    assert_equal 'foobar', @page.find('#text2').value
    assert_raises(Capybara::Ambiguous) {@page.fill_in 'please complete', :with => 'bazqux'}
  end

  def test_one_will_raise_ambiguous_error_for_any_multiple_matches
    Capybara.match = :one
    Capybara.exact = false
    @page.has_selector? '.result', { :visible => true, :text => 'Match 1' }
    assert_raises(Capybara::Ambiguous) {@page.fill_in 'please complete this', :with => 'foobar'}
  end

  def test_setting_exact_to_true_will_raise_ambiguous_error_for_any_multiple_matches
    Capybara.match = :one
    Capybara.exact = true
    @page.has_selector? '.result', { :visible => true, :text => 'Match 1' }
    assert_raises(Capybara::ElementNotFound) {@page.fill_in 'please complete', :with => 'foobar'}
  end
end
