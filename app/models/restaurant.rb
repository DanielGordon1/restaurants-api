class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, length: { minimum: 3 }
end
