class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :books, through: :bookmarks
  # A list has many books thorough bookmarks
  validates :name, uniqueness: true
  validates :name, presence: true
end
