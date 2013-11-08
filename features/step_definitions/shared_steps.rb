Given(/^I visit "(.*?)"$/) do |arg|
  visit arg
end

When(/^I (click|follow|press) "(.*?)"$/) do |action, arg1|
  click_link_or_button arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  page.fill_in arg1.capitalize, with: arg2
end