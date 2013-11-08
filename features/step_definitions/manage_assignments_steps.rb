Then(/^I [Ss]hould be on the home page$/) do
  URI.parse(current_url).path.should eq '/'
end

Given(/^I have an "(.*?)" with the "(.*?)" "(.*?)"$/) do |klass, attri, value|
  klass.constantize.create(attri.to_sym => value)
end

When(/^I check "(.*?)"$/) do |arg1|
  page.check arg1
end
