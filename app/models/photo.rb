class Photo < ApplicationRecord

  belongs_to :user
  belongs_to :category
  has_many :votes

  mount_uploader :photo, PhotoUploader

end
