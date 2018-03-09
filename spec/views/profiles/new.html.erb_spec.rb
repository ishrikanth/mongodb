require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :gender => "MyString",
      :bloog_group => "MyString",
      :person => nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[gender]"

      assert_select "input[name=?]", "profile[bloog_group]"

      assert_select "input[name=?]", "profile[person_id]"
    end
  end
end
