Given(/^contructor PostTest and PostTest2$/) do |table|
  # table is a Cucumber::Ast::Table
  @count_em1=Posttest2.all
  @count_user1=PostTest.all
  @employee ||=Posttest2.new
  @user=PostTest.new
  table.hashes.each do |t|
    @employee=Posttest2.new(name:t[:name],email:t[:email])
    @user=PostTest.new(user:t[:password],pass:t[:role])
  end
 
end

When(/^I will create user and employee$/) do
   Posttest2.transaction do
     @employee.save
     @user.save
   end
   

end

Then(/^I should not see user and employee$/) do
  @count_em1.should==@count_em1
 
 
end