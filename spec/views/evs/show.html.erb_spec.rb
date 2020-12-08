require 'rails_helper'

RSpec.describe "evs/show", type: :view do
  before(:each) do
    @ev = assign(:ev, Ev.create!(
      eng: "Eng",
      vni: "Vni"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Eng/)
    expect(rendered).to match(/Vni/)
  end
end
