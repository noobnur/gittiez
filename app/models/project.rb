class Project < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :comments, as: :commentable
end
