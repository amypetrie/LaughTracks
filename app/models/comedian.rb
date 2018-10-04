class Comedian < ActiveRecord::Base
  validates_presence_of :title, :length
  has_many :specials
end
