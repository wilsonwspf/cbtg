class Member < ActiveRecord::Base
  uploads_one :picture, thumb: [45, 40], small: [150, 200], regular: [580, 240], full: [1280, 493]
  belongs_to :ctg
  belongs_to :tiposoc
  has_many :ocurrences
  has_many :directors
end
