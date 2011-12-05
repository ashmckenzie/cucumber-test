Given /^I am an anoynmous user$/ do
  # nothing to do here
end

When /^I browse to "([^"]*)"$/ do |path|
  visit(path)
end

Then /^I should see "([^"]*)" on the page$/ do |arg|
  page.should have_content(arg)
end

When /^I fill in the "([^"]*)" input with "([^"]*)"$/ do |input_name, input_value|
  fill_in(input_name, :with => input_value)
end

When /^I click the "([^"]*)" submit$/ do |submit_value|
  click_on(submit_value)
end

Then /^I should be on the "([^"]*)" page$/ do |path|
  current_path.should == path
end

Then /^I should see "([^"]*)" contests nodes$/ do |number|
  @contests = JSON.parse(page.text)
  @contests.count.should == number.to_i
end