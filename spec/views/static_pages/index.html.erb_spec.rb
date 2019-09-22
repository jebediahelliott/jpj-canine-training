require 'rails_helper'

RSpec.describe "static_pages/index", type: :view do
  before(:each) do
    assign(:static_pages, [
      StaticPage.create!(
        :title => "Title"
      ),
      StaticPage.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of static_pages" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
