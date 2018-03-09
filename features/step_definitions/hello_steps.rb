When(/^I go to the people page$/) do
  visit people_path
end

Then(/^I should see the People message$/) do
  expect(page).to have_content("People")
end
