require 'rails_helper'

RSpec.describe "evs/edit", type: :view do
  before(:each) do
    @ev = assign(:ev, Ev.create!(
      eng: "MyString",
      vni: "MyString"
    ))
  end

  it "renders the edit ev form" do
    render

    assert_select "form[action=?][method=?]", ev_path(@ev), "post" do

      assert_select "input[name=?]", "ev[eng]"

      assert_select "input[name=?]", "ev[vni]"
    end
  end
end
