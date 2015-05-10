class User < ActiveRecord::Base
  belongs_to :startup
  has_one :profile, as: :profileable, dependent: :destroy
  has_one :location, as: :locationable, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :startup_id
end
