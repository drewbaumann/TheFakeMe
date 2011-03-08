require 'spec_helper'

describe "identities/new.html.erb" do
  before(:each) do
    assign(:identity, stub_model(Identity,
      :fname => "MyString",
      :lname => "MyString",
      :occupation => "MyString"
    ).as_new_record)
  end

  it "renders new identity form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => identities_path, :method => "post" do
      assert_select "input#identity_fname", :name => "identity[fname]"
      assert_select "input#identity_lname", :name => "identity[lname]"
      assert_select "input#identity_occupation", :name => "identity[occupation]"
    end
  end
end
