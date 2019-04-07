require 'rails_helper'

RSpec.describe "search_settings/show", type: :view do
  before(:each) do
    @search_setting = assign(:search_setting, SearchSetting.create!(
      :word => "Word"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Word/)
  end
end
