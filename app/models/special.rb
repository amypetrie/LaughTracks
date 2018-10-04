class Special < ActiveRecord::Base
  # validates_presence_of :title, :length
  belongs_to :comedian
end
