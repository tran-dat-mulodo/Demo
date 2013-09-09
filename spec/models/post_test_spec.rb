require 'spec_helper'
#Configure save DB test
RSpec.configure do |config|
  config.use_transactional_fixtures = true
end

describe PostTest do
  #pending "add some examples to (or delete) #{__FILE__}"
  #Test validiate
  before {   @post_test = PostTest.new(user: "Example User", pass: " asdasd") }
  
  describe 'validate user using error_on' do
    before { @post_test.user = " " 
      @post_test.pass = " "} 
        describe 'test name' do
          it 'fails validation with no name' do
            expect(@post_test).to have(2).error_on(:user)
          end    
        end
   end
   
   describe 'Test Record' do

          it 'has no record' do         
            expect(PostTest).to have(0).record
          end  
          

          it 'has one record' do
            PostTest.create!(user: "Example User", pass: " asdasd")
            expect(PostTest).to have(1).record
          end    
   end
   
   describe 'when name is not present' do
     before { @post_test.user = " "}
          it {should_not be_valid}
   end
   
end

