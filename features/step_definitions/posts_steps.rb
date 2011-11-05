
Given /^a post exists with a title of "([^"]*)"$/ do |title|
  FactoryGirl.create(:post, :title => title)
end

Then /^I visit the startpage$/ do
  visit('/')
end

