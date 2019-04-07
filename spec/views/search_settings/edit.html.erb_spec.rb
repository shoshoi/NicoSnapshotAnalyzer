require 'rails_helper'

RSpec.describe "search_settings/edit", type: :view do
  before(:each) do
    @search_setting = assign(:search_setting, SearchSetting.create!(
      :word => "MyString"
    ))
  end

  it "renders the edit search_setting form" do
    render

    assert_select "form[action=?][method=?]", search_setting_path(@search_setting), "post" do

      assert_select "input[name=?]", "search_setting[word]"
    end
  end
end
