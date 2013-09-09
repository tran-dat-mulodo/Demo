Given(/^Ip the system know about the following user:$/) do |table|
  # table is a Cucumber::Ast::Table
  FruitApp.data = table.hashes
end

When(/^Ip the client request GET (.*)$/) do |path|
  get(path)
end

Then(/^Ip the response should be JSON:$/) do |string|
  JSON.parse(last_response.body).should == JSON.parse(string)
end


