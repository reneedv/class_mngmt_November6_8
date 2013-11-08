Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_text arg1
end