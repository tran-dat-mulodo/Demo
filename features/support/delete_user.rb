Given(/^delete: I find user username with "(.*?)"$/) do |arg1|
  @user=PostTest.find_by_user(arg1)
  assert_not_nil(@user,"user found")
  @count1=PostTest.count
end

When(/^I will delete username "(.*?)"$/) do |arg1|
#  pending # express the regexp above with the code you wish you had
@user.destroy
 @count2=PostTest.count
end

Then(/^I should see not user database$/) do
  #pending # express the regexp above with the code you wish you had
  @count2.should==@count1-1
end