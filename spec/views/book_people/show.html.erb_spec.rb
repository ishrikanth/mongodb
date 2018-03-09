require 'rails_helper'

RSpec.describe "book_people/show", type: :view do
  before(:each) do
    @book_person = assign(:book_person, BookPerson.create!(
      :person => nil,
      :book => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
