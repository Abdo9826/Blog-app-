class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  after_save :update_post_counter
  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.post_counter(author_id)
    user = User.find(author_id)
    user.post_counter += 1
    user.save
  end

  def self.five_recent_comments(author_id, post_id)
    Comment.where(author_id, post_id).order(created_at: :desc).limit(5).all
  end
end
