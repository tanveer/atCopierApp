class Model < ActiveRecord::Base
  belongs_to :make
  has_many :codes
end
