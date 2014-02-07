class Mtg < ActiveRecord::Base
  mount_uploader :logo, PictureUploader
  has_many :rts
end
