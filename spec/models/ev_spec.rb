require 'rails_helper'

ev = FactoryGirl.create(:ev)


# viết test kiểu gì....
#
RSpec.describe Ev, type: :model do
  it "has a valid factory" do
    #puts (ev.to_json)
    expect(ev).to be_valid
  end
  # it "has a valid factory" do
  #   expect(ev).to raise_error("message")
  # end
end
