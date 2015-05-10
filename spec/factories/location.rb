FactoryGirl.define do
  factory :location do
    factory :valid_location do
      factory :user_location do
        city Faker::Address.city
        user
      end
      factory :startup_location do
        city Faker::Address.city
        startup
      end
    end
    factory :invalid_location do
      factory :location_without_user do
        city Faker::Address.city
        locationable nil
        locationable_type "user"
      end
      factory :location_without_startup do
        city Faker::Address.city
        locationable nil
        locationable_type "startup"
      end
      factory :location_without_city do
        city nil
      end
    end
  end
end
