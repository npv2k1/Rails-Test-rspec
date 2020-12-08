require 'rails_helper'

RSpec.describe "evs/new", type: :view do
  before(:each) do
    assign(:ev, Ev.new(
      eng: "MyString",
      vni: "MyString"
    ))
  end

  it "renders new ev form" do
    render

    assert_select "form[action=?][method=?]", evs_path, "post" do

      assert_select "input[name=?]", "ev[eng]"

      assert_select "input[name=?]", "ev[vni]"
    end
  end
end
