class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  validates :text, presence: true
  after_save :update_comments_counter

  def update_comments_counter
    post.increment!(:comments_counter)
  end
end
