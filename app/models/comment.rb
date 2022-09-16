class Comment < ApplicationRecord
  belongs_to :post, class_name: 'Post'
  belongs_to :author, class_name: 'User'

  validates :text, presence: true
  after_save :post_comments_counter

  def self.update_comments_counter(post_id)
    post = Post.find(post_id)
    post.comments_counter += 1
    post.save
  end
end
