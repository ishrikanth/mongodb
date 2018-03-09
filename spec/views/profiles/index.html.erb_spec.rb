require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :gender => "Gender",
        :bloog_group => "Bloog Group",
        :person => nil
      ),
      Profile.create!(
        :gender => "Gender",
        :bloog_group => "Bloog Group",
        :person => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Bloog Group".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
