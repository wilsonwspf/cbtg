class Prova < ActiveRecord::Base
  has_many :tpeves
  belongs_to :modal
end
