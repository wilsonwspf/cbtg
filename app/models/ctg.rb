class Ctg < ActiveRecord::Base
  has_many :members
  belongs_to :rt
end
