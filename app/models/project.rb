class Project < ActiveRecord::Base
  attr_accessible :description, :name, :date
  
  has_many :project_images
  
end
