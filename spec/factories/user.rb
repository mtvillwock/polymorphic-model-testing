FactoryGirl.define do
  factory :user do
    factory :valid_user do
      name Faker::Name.name
      startup
    end
    factory :invalid_user do
      factory :user_without_name do
        name nil
      end
      factory :user_without_startup do
        startup nil
      end
    end
  end
end
