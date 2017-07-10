class Post < ApplicationRecord
  # polymorphism for votes in posts
  has_many :votes, as: :votable
  # one to many relationship
  belongs_to :subreddit
  belongs_to :user

  enum type: ['link','text']
end
