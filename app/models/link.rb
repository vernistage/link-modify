class Link < ApplicationRecord
  validates :destination, :format => URI::regexp(%w(http https)), message: "Must start with http(s)://"
  validates :entry, presence: true, uniqueness: true
end
