class Idea < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :idea_images
  has_many   :images, through: :idea_images
  validates  :title, :description, :user_id, :category_id, presence: true
end
