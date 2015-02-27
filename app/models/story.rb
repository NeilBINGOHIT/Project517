class Story < ActiveRecord::Base

  validates :name, presence: true

  belongs_to :project
  has_many :users
end
