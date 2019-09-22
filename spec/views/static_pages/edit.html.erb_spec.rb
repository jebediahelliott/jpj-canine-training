require 'rails_helper'

RSpec.describe "static_pages/edit", type: :view do
  before(:each) do
    @static_page = assign(:static_page, StaticPage.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit static_page form" do
    render

    assert_select "form[action=?][method=?]", static_page_path(@static_page), "post" do

      assert_select "input[name=?]", "static_page[title]"
    end
  end
end
