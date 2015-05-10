class User < ActiveRecord::Base
  # has_one :startup
  belongs_to :startup
  has_one :profile, as: :profileable, dependent: :destroy
  has_one :location, as: :locationable, dependent: :destroy
end
