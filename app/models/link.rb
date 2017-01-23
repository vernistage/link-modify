class Link < ApplicationRecord
  has_many :phone_numbers

  validates :entry, :destination, presence: true
end
