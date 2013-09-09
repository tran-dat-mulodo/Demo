require 'spec_helper'

describe "post_tests/index" do
  before(:each) do
    assign(:post_tests, [
      stub_model(PostTest,
        :user => "User",
        :pass => "Pass"
      ),
      stub_model(PostTest,
        :user => "User",
        :pass => "Pass"
      )
    ])
  end

  it "renders a list of post_tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Pass".to_s, :count => 2
  end
end
