require 'rails_helper'

RSpec.describe "static_pages/show", type: :view do
  before(:each) do
    @static_page = assign(:static_page, StaticPage.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
