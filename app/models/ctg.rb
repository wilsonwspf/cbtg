class Ctg < ActiveRecord::Base
  mount_uploader :logo, PictureUploader
  has_many :members
  has_many :piquetes
  belongs_to :rt
end
