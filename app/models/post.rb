class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :title, :content, presence: true, length: { maximum: 200 }
end
