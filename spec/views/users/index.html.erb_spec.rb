require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_line => "Address Line",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :avatar => "Avatar"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_line => "Address Line",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end
