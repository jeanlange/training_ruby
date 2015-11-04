Given "I want to withdraw money" do
  puts "GIMME MONEY"
end

When(/^I withdraw money$/) do
  puts "taking money now"
end

Then(/^I get money$/) do
  expect('foo').to eq ''
end
