class PhoneNumber < ApplicationRecord
  belongs_to :link

  validates :number, presence: true
end
