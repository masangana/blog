#rubocop:disable all
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :comments
  has_many :posts
  has_many :likes

  def last_post
    posts.order(created_at: :desc).first
  end

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  def recent_posts
    posts.order(created_at: :desc).limit(5)
  end

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
