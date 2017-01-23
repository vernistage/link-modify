class Link < ApplicationRecord
  validates :entry, :destination, presence: true
end
