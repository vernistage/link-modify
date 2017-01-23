class Link < ApplicationRecord
  validates :entry, :destination, :phone_num, presence: true
end
