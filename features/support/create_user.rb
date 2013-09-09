
Given(/^I want contructor user username with "(.*?)", password with "(.*?)"/) do |arg1, arg2| #, arg3| #, role with (\d+)$/)
  @user=PostTest.new(user:arg1,pass:arg2)#,role:arg3)
  @count1=PostTest.count
end

When(/^I call create PostTest$/) do
 @user.save
 @count2=PostTest.count
end

Then(/^I should see user have databaes$/) do
  @count2.should== @count1+1
end
