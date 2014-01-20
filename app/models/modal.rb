class Modal < ActiveRecord::Base
  belongs_to :tpeve
  belongs_to :registration
  has_many :provas
end
