require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :gender => "Gender",
      :bloog_group => "Bloog Group",
      :person => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Bloog Group/)
    expect(rendered).to match(//)
  end
end
