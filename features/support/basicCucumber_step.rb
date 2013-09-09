Given(/^I go to the new page page$/) do
  #pending # express the regexp above with the code you wish you had
  visit "http://localhost:3000/post_tests/new"#new_page_path
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
  fill_in arg1, :with => arg2
end

When(/^I press "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  click_button arg1
end

Then(/^I should be on the page list page$/) do
  #pending # express the regexp above with the code you wish you had
  page.should have_content('Listing pages') 
end

Then(/^I should see "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  #page.should have_content(arg1)
  page.should have_content('successfully')
end