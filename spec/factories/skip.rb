FactoryBot.define do
  factory :skip do
    name { Faker::Lorem.characters(number:10) }
    number { Faker::number(); }
  end
end