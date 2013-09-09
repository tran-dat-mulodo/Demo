Given(/^upadte: I find user username with "(.*?)"$/) do |arg1|
  @user=User.find_by_username(arg1)
  assert_not_nil(@user,"user found")
  
end

When(/^I will update username anh with "(.*?)"$/) do |arg1|
  @user.username=arg1
  @user.save
end

Then(/^I should see user have username with "(.*?)"$/) do |arg1|
  @user=User.find_by_username(arg1)
  assert_not_nil(@user,"user found")
end