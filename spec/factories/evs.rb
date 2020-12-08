require "faker"
FactoryGirl.define do
  factory :ev do
    eng { Faker::Name.name }
    vni { Faker::Name.name }
  end
end
