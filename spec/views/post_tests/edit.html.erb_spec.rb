require 'spec_helper'

describe "post_tests/edit" do
  before(:each) do
    @post_test = assign(:post_test, stub_model(PostTest,
      :user => "MyString",
      :pass => "MyString"
    ))
  end

  it "renders the edit post_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # Not do the test with model and request
    assert_select "form[action=?][method=?]", post_test_path(@post_test), "post" do
      #Check param element 0 matching
      assert_select "input#post_test_user[name=?]", "post_test[user]"
      assert_select "input#post_test_pass[name=?]", "post_test[pass]"
    end
  end
end
