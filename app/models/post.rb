class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_comments_counter
    update(comments_counter: comments.count)
  end

  def update_likes_counter
    update(likes_counter: likes.count)
  end

  def update_posts_counter
    user.update(posts_counter: user.posts.count)
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  validates :title, presence: true, length: { minimum: 3, maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
