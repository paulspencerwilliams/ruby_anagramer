Given /^I ask for anagrams for (.*?)$/ do |input|
  steps %{
    When I run `list_anagrams.rb #{input} `
  }
end

Then /^I should see (.*?)$/ do |expected|
  steps %{
    Then it should pass with:
"""
#{expected}
"""
  }
end
