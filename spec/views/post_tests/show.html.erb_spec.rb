require 'spec_helper'

describe "post_tests/show" do
  before(:each) do
    @post_test = assign(:post_test, stub_model(PostTest,
      :user => "User",
      :pass => "Pass"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(/Pass/)
  end
end
