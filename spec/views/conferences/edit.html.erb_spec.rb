require 'spec_helper'

describe "conferences/edit" do
  before(:each) do
    @conference = assign(:conference, stub_model(Conference,
      :topic => "MyText",
      :description => "MyText",
      :presenters => "MyText",
      :companies => "MyText",
      :address => "MyText",
      :contact => "MyText",
      :event => nil
    ))
  end

  it "renders the edit conference form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", conference_path(@conference), "post" do
      assert_select "textarea#conference_topic[name=?]", "conference[topic]"
      assert_select "textarea#conference_description[name=?]", "conference[description]"
      assert_select "textarea#conference_presenters[name=?]", "conference[presenters]"
      assert_select "textarea#conference_companies[name=?]", "conference[companies]"
      assert_select "textarea#conference_address[name=?]", "conference[address]"
      assert_select "textarea#conference_contact[name=?]", "conference[contact]"
      assert_select "input#conference_event[name=?]", "conference[event]"
    end
  end
end
