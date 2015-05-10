class Location < ActiveRecord::Base
  belongs_to :locationable, polymorphic: true
  validates_presence_of :city, :locationable_id, :locationable_type
end
