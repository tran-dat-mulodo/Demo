require 'spec_helper'

describe "PostTests" do
  #Test HTTP Response Code 200
  describe "GET /post_tests" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get post_tests_path
      response.status.should be(200)
    end
  end
  
  
  #request
  #Single Request
  describe "User management" do
  
    it "creates a User and redirects to the User page" do
      get "/post_tests/new"
      expect(response).to render_template(:new)
      
      post "/post_tests", :post_test => {
                                    :user => "My Account", 
                                    :pass => "ttnguyenit1@gmail.com", 
                                   }
      
      expect(response).to redirect_to(assigns(:post_test))
      follow_redirect!
      
      expect(response).to render_template(:show)
      expect(response.body).to include("Welcome to the Sample App")
    end
  end
  
end
