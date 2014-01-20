class Registration < ActiveRecord::Base
  belongs_to :mtg
  belongs_to :rt
  belongs_to :ctg
  belongs_to :member
  belongs_to :evento
  belongs_to :modal
  belongs_to :prova
  belongs_to :tbgrupo
  belongs_to :category
  belongs_to :evento

end
