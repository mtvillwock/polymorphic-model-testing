FactoryGirl.define do
  factory :startup do
    factory :valid_startup do
      name Faker::Company.name
    end
    factory :invalid_startup do
      factory :startup_without_name do
        name nil
      end
    end
  end
end
