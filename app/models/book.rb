class Book < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :author, presence: true
  validates :year, numericality: { only_integer: true, allow_nil: true }
  validates :isbn, presence: true, isbn_format: true
end
