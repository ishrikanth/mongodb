require 'rails_helper'

RSpec.describe "blogs/edit", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :name => "MyString",
      :price => 1.5,
      :tags => "MyString",
      :person => nil
    ))
  end

  it "renders the edit blog form" do
    render

    assert_select "form[action=?][method=?]", blog_path(@blog), "post" do

      assert_select "input[name=?]", "blog[name]"

      assert_select "input[name=?]", "blog[price]"

      assert_select "input[name=?]", "blog[tags]"

      assert_select "input[name=?]", "blog[person_id]"
    end
  end
end
