class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
  validates :address, presence: true    
  validates :description, presence: true
  
  mount_uploaders :avatars, AvatarUploader

end

