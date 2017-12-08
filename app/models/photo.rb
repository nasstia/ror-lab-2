class Photo < ApplicationRecord

  belongs_to :user
  belongs_to :category
<<<<<<< HEAD
  has_many :votes
=======
>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763

  mount_uploader :photo, PhotoUploader

end
