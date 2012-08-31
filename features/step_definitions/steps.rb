require './lib/anagramer.rb'

Given /^I type in (.*?)$/ do |input|
  @anagramer = Anagramer.new
  @input = input 
end

When /^I ask for anagrams$/ do
  @output = @anagramer.lookup @input 
end

Then /^I should see (.*?)$/ do |expected|
  @output.to_s.should eq(expected) 
end
