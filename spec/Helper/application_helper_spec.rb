require "spec_helper"

describe ApplicationHelper do
  describe "#page_title", :type => :helper do
    it "returns the default title" do
      expect(helper.page_title).to eq("RSpec is your friend")
    end
  end
end