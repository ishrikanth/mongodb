Given /^I have people first_name (.+)$/ do |names|
  names.split(", ").each do | name|
    Person.create!(first_name: name)
  end
end

Given /^I have no People$/ do
  Person.delete_all
end

Then /^I should have ([0-9]+) people?$/ do |count|
  Person.count.shoud == count.to_i
end

When /^I go to the list of people/ do |x|
  visit people_path
end


Then /^I should see ([a-z]+)$/ do |content|
  expect(page).to have_content(content)
end
