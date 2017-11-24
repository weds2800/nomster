class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  geocoded_by :address
  after_validation :geocode 
  
  validates :name, length: { minimum: 4 }, presence: true 
  validates :address, :description, presence: true
end
