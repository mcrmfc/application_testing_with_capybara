Given(/^I am on a page with multiple search results$/) do
  visit 'http://localhost/html/chapter2/multiple.html'
end

When(/^I search for the relevant results$/) do
  all('.result').each_with_index do |elem, idx|
    elem.text.should == "Match #{idx + 1}"
  end
end

Then(/^the results are found$/) do
  #assertion in step above
end
