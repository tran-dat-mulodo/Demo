require 'httparty'
When(/^the client request GET (.*)$/) do |path|
  @last_response = HTTParty.get('http://127.0.0.1:9999' + path)
end

Then(/^the response should be JSON:$/) do |string|
  JSON.parse(@last_response.body).should == JSON.parse(string)
end

Given(/^the system know about the following user:$/) do |table|
  # table is a Cucumber::Ast::Table
  File.open('fruits.json', 'w') do |io|
    io.write(table.hashes.to_json)
  end
end


