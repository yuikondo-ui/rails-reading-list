class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # A list has many movies thorough bookmarks
  validates :name, uniqueness: true
  validates :name, presence: true
end
