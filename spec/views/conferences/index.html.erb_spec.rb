require 'spec_helper'

describe "conferences/index" do
  before(:each) do
    assign(:conferences, [
      stub_model(Conference,
        :topic => "MyText",
        :description => "MyText",
        :presenters => "MyText",
        :companies => "MyText",
        :address => "MyText",
        :contact => "MyText",
        :event => nil
      ),
      stub_model(Conference,
        :topic => "MyText",
        :description => "MyText",
        :presenters => "MyText",
        :companies => "MyText",
        :address => "MyText",
        :contact => "MyText",
        :event => nil
      )
    ])
  end

  it "renders a list of conferences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
