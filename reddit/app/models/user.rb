class User < ApplicationRecord
  # many to many relationship
  has_many :posts
  has_many :comments

  has_and_belongs_to_many :subreddits

end
