require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :word => "Word"
      ),
      User.create!(
        :word => "Word"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
  end
end
