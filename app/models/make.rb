class Make < ActiveRecord::Base
  has_many :models
  has_attached_file :attachment
  # has_attached_file :image, :styles => {:thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
