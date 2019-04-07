require 'rails_helper'

RSpec.describe "search_settings/index", type: :view do
  before(:each) do
    assign(:search_settings, [
      SearchSetting.create!(
        :word => "Word"
      ),
      SearchSetting.create!(
        :word => "Word"
      )
    ])
  end

  it "renders a list of search_settings" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
  end
end
