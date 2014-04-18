require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :description => "MyText",
      :presenters => "MyText",
      :companies => "MyText",
      :address => "MyText",
      :contact => "MyText"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "textarea#event_presenters[name=?]", "event[presenters]"
      assert_select "textarea#event_companies[name=?]", "event[companies]"
      assert_select "textarea#event_address[name=?]", "event[address]"
      assert_select "textarea#event_contact[name=?]", "event[contact]"
    end
  end
end
