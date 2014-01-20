class Mtg < ActiveRecord::Base
  has_many :rts
  has_many :registrations
end
