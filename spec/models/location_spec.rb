require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'model validations and associations' do
    it { should validate_presence_of :city }
    it { should validate_presence_of :locationable_id }
    it { should validate_presence_of :locationable_type }
    it { should belong_to :locationable }
  end

  context 'valid Location' do
    it 'is valid with associated startup and city' do
      startup = create(:valid_startup)
      user = create(:valid_user, startup_id: startup.id)
      user_location = build(:valid_location, city: Faker::Address.city, locationable_id: user.id, locationable_type: user.class.name)
      expect(user_location).to be_valid
    end
    it 'is valid with an associated user and city' do
      startup = create(:valid_startup)
      startup_location = build(:valid_location, city: Faker::Address.city, locationable_id: startup.id, locationable_type: startup.class.name)
      expect(startup_location).to be_valid
    end
  end

  context 'invalid Location' do
    it 'is invalid without a city' do
      expect(build(:location_without_city)).to be_invalid
    end
    it 'is invalid without an associated user' do
      expect(build(:location_without_user)).to be_invalid
    end
    it 'is invalid without an associated startup' do
      expect(build(:location_without_startup)).to be_invalid
    end
  end
end
