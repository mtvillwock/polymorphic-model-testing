class Startup < ActiveRecord::Base
  has_many :users
  has_one :profile, as: :profileable, dependent: :destroy
  has_one :location, as: :locationable, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
end
