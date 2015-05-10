require 'rails_helper'

RSpec.describe Profile, type: :model do
  context 'model validations and associations' do
    it { should validate_presence_of :description }
    it { should validate_presence_of :profileable_id }
    it { should validate_presence_of :profileable_type }
    it { should validate_uniqueness_of :description }
    it { should belong_to :profileable }
  end

  context 'valid Profile' do
    it 'is valid with associated startup and description' do
      startup = create(:valid_startup)
      user = create(:valid_user, startup_id: startup.id)
      user_profile = build(:valid_profile, description: Faker::Lorem.sentence, profileable_id: user.id, profileable_type: user.class.name)
      expect(user_profile).to be_valid
    end
    it 'is valid with an associated user and description' do
      startup = create(:valid_startup)
      startup_profile = build(:valid_profile, description: Faker::Lorem.sentence, profileable_id: startup.id, profileable_type: startup.class.name)
      expect(startup_profile).to be_valid
    end
  end

  context 'invalid Profile' do
    it 'is invalid without a description' do
      expect(build(:profile_without_description)).to be_invalid
    end
    it 'is invalid without an associated user' do
      expect(build(:profile_without_user)).to be_invalid
    end
    it 'is invalid without an associated startup' do
      expect(build(:profile_without_startup)).to be_invalid
    end
  end
end
