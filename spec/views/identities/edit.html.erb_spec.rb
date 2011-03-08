require 'spec_helper'

describe "identities/edit.html.erb" do
  before(:each) do
    @identity = assign(:identity, stub_model(Identity,
      :new_record? => false,
      :fname => "MyString",
      :lname => "MyString",
      :occupation => "MyString"
    ))
  end

  it "renders the edit identity form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => identity_path(@identity), :method => "post" do
      assert_select "input#identity_fname", :name => "identity[fname]"
      assert_select "input#identity_lname", :name => "identity[lname]"
      assert_select "input#identity_occupation", :name => "identity[occupation]"
    end
  end
end
