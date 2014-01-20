class Rt < ActiveRecord::Base
  has_many :ctgs
  has_many :registrations
  belongs_to :mtg
end
