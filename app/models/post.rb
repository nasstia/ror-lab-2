class Post < ApplicationRecord
  belongs_to :user

  validates :title, length: { minimum: 5, maximum: 10 }
end
