Given(/^I visit "(.*?)"$/) do |arg|
  visit arg
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_text arg1
end

When(/^I click "(.*?)"$/) do |arg1|
  click_link_or_button arg1
end

When(/^I fill in the field "(.*?)" with the text "(.*?)"$/) do |arg1, arg2|
  page.fill_in arg1, with: arg2
end