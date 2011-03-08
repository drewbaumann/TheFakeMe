require 'spec_helper'

describe "identities/show.html.erb" do
  before(:each) do
    @identity = assign(:identity, stub_model(Identity,
      :fname => "Fname",
      :lname => "Lname",
      :occupation => "Occupation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Lname/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Occupation/)
  end
end
