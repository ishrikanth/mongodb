require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      :name => "MyString",
      :price => 1.5,
      :tags => "MyString",
      :person => nil
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input[name=?]", "blog[name]"

      assert_select "input[name=?]", "blog[price]"

      assert_select "input[name=?]", "blog[tags]"

      assert_select "input[name=?]", "blog[person_id]"
    end
  end
end
