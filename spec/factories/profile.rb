FactoryGirl.define do
  factory :profile do
    factory :valid_profile do
      factory :user_profile do
        description Faker::Lorem.sentence
        user
      end
      factory :startup_profile do
        description Faker::Lorem.sentence

        startup
      end
    end
    factory :invalid_profile do
      factory :profile_without_user do
        description Faker::Lorem.sentence
        profileable nil
        profileable_type "user"
      end
      factory :profile_without_startup do
        description Faker::Lorem.sentence
        profileable nil
        profileable_type "startup"
      end
      factory :profile_without_description do
        description nil
      end
    end
  end
end
