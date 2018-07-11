FactoryBot.define do
  factory :dish do
    name "Pasta"
    price 100
    description "Very nice"
    association :category
  end
end
