class Comment < ActiveRecord::Base
  validates :post_id, presence: true, numericality: true
  belongs_to :post
end
