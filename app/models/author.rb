class Author < ApplicationRecord
  has_many :books
  validates :family_name, presence: true
  validates :given_name, presence: true
end
