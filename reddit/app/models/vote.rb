class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true

  belongs_to :post
  belongs_to :user
  belongs_to :comment


  #uniqueness between a user and comment
  validates :user, uniqueness: { scope: :post }
  validates :post, uniqueness: { scope: :user }

  #uniqueness between a user and comment
  validates :user, uniqueness: { scope: :comment }
  validates :comment, uniqueness: { scope: :user }


end
