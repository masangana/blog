class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, uniqueness: { scope: :post }

  def update_likes_counter
    post.update(likes_counter: post.likes.count)
  end
end
