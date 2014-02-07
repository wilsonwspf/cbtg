class Rt < ActiveRecord::Base
  mount_uploader :logo, PictureUploader
  has_many :ctgs
  belongs_to :mtg
end
