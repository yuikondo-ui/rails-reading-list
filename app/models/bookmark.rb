class Bookmark < ApplicationRecord
  belongs_to :book
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :book, scope: :list
end
