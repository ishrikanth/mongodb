require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :gender => "MyString",
      :bloog_group => "MyString",
      :person => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[gender]"

      assert_select "input[name=?]", "profile[bloog_group]"

      assert_select "input[name=?]", "profile[person_id]"
    end
  end
end
