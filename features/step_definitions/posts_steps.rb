
Given /^a post exists with a title of "([^"]*)"$/ do |title|
  FactoryGirl.create(:post, :title => title)
end

Then /^I visit the startpage$/ do
  visit('/')
end

Then /^I go select the post "([^"]*)" on the startpage$/ do |post|
  visit('/')
  page.find(:xpath, "//a[contains(.,'#{post}')]").click
end

Then /^I click on the "([^"]*)"$/ do |name|
  page.find(:xpath, "//a[contains(.,'#{name}')]").click
end

