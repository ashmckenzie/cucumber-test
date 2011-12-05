Given /^I provide the command line argument "([^"]*)"(?: and "([^"]*)")?$/ do |arg1, arg2|
  @arg1 = arg1
  @arg2 = arg2
end

When /^I execute the program$/ do
  @result = `./example.rb #{@arg1} #{@arg2}`.chomp
end

Then /^I should see "([^"]*)"$/ do |arg|
  @result.should == arg
end