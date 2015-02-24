class Post < ActiveRecord::Base
  has_many :tags, through: :taggings
  validates :title, :content, presence: true
end
