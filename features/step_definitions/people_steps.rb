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

  Then /^I should have ([0-9]+) people?$/ do |count|
    Person.count.shoud == count.to_i
  end

  When /^I go to the list of people/ do |x|
    visit people_path
  end


  # Then /^I should see ([a-z]+)$/ do |content|
  #   expect(page).to have_content(content)
  # end

  Then /^I should see "([^"]*)"$/ do |text|
    page.should have_content(text)
  end

  When /^I am on the list of People/ do
    '/people'
  end


  When("I follow {string}") do |string|
    click_link(link)# Write code here that turns the phrase above into concrete actions
  end

  When("I fill in the {string} with {string}") do |string, string2|
      fill_in(string, :with => string2) # Write code here that turns the phrase above into concrete actions
  end

  When("I press {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end

  Then("I should have {int} person") do |int|
    pending # Write code here that turns the phrase above into concrete actions
  end
