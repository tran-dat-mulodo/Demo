require 'spec_helper'
#include ApplicationHelper
Rails.configuration.action_mailer.default_url_options = { :host => 'example.sdfdsfsd' }

describe ApplicationHelper  do
  describe "#gadgets_url", :type => :helper do
    it 'should have access to URL helpers' do
      #expect { gadgets_url :host => 'example.com' }.not_to raise_error
      expect { gadgets_url }.not_to raise_error
    end
  end
  
  
end