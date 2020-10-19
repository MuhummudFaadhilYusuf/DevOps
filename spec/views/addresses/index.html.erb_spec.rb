require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        address1: "MyText",
        address2: "MyText",
        city: "City",
        postcode: "Postcode",
        user: nil
      ),
      Address.create!(
        address1: "MyText",
        address2: "MyText",
        city: "City",
        postcode: "Postcode",
        user: nil
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Postcode".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
