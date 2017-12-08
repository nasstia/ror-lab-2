class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :postcomments
  has_many :photos, dependent: :destroy
<<<<<<< HEAD
  has_many :images
  has_many :votes
=======
>>>>>>> df42636c40b5e9d81677e53d2aa62d7287317763

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/default.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
