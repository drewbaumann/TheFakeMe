require 'spec_helper'

describe "identities/index.html.erb" do
  before(:each) do
    assign(:identities, [
      stub_model(Identity,
        :fname => "Fname",
        :lname => "Lname",
        :occupation => "Occupation"
      ),
      stub_model(Identity,
        :fname => "Fname",
        :lname => "Lname",
        :occupation => "Occupation"
      )
    ])
  end

  it "renders a list of identities" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
  end
end
