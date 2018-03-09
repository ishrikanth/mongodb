require 'rails_helper'

RSpec.describe "book_people/edit", type: :view do
  before(:each) do
    @book_person = assign(:book_person, BookPerson.create!(
      :person => nil,
      :book => nil
    ))
  end

  it "renders the edit book_person form" do
    render

    assert_select "form[action=?][method=?]", book_person_path(@book_person), "post" do

      assert_select "input[name=?]", "book_person[person_id]"

      assert_select "input[name=?]", "book_person[book_id]"
    end
  end
end
