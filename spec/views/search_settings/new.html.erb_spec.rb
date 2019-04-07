require 'rails_helper'

RSpec.describe "search_settings/new", type: :view do
  before(:each) do
    assign(:search_setting, SearchSetting.new(
      :word => "MyString"
    ))
  end

  it "renders new search_setting form" do
    render

    assert_select "form[action=?][method=?]", search_settings_path, "post" do

      assert_select "input[name=?]", "search_setting[word]"
    end
  end
end
