class Story < ActiveRecord::Base
  validates :name, presence: true

  #belongs_to :project
  has_many :developers
  
end
