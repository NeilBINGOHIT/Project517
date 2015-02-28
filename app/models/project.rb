class Project < ActiveRecord::Base
	
  validates :name, presence: true

  has_many :stories
  has_many :users
  
end
