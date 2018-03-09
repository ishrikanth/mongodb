require 'rails_helper'

RSpec.describe "book_people/new", type: :view do
  before(:each) do
    assign(:book_person, BookPerson.new(
      :person => nil,
      :book => nil
    ))
  end

  it "renders new book_person form" do
    render

    assert_select "form[action=?][method=?]", book_people_path, "post" do

      assert_select "input[name=?]", "book_person[person_id]"

      assert_select "input[name=?]", "book_person[book_id]"
    end
  end
end