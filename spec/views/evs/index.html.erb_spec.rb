require 'rails_helper'

RSpec.describe "evs/index", type: :view do
  before(:each) do
    assign(:evs, [
      Ev.create!(
        eng: "Eng",
        vni: "Vni"
      ),
      Ev.create!(
        eng: "Eng",
        vni: "Vni"
      )
    ])
  end

  it "renders a list of evs" do
    render
    assert_select "tr>td", text: "Eng".to_s, count: 2
    assert_select "tr>td", text: "Vni".to_s, count: 2
  end
end
