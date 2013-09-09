require 'spec_helper'

describe "post_tests/new" do
  before(:each) do
    assign(:post_test, stub_model(PostTest,
      :user => "MyString",
      :pass => "MyString"
    ).as_new_record)
  end

  it "renders new post_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # Not do the test with model and request
    assert_select "form[action=?][method=?]", post_tests_path, "post" do
       #Check param element 0 matching
      assert_select "input#post_test_user[name=?]", "post_test[user]"
      assert_select "input#post_test_pass[name=?]", "post_test[pass]"
    end
  end
end
