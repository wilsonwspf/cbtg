class Member < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :ctg
  belongs_to :registration
end
