require 'rails_helper'

RSpec.describe "book_people/index", type: :view do
  before(:each) do
    assign(:book_people, [
      BookPerson.create!(
        :person => nil,
        :book => nil
      ),
      BookPerson.create!(
        :person => nil,
        :book => nil
      )
    ])
  end

  it "renders a list of book_people" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
