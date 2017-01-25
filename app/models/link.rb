class Link < ApplicationRecord
  validates :destination, :format => URI::regexp(%w(http https))
  validates :entry, presence: true, uniqueness: true
end
