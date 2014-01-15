class ProjectImage < ActiveRecord::Base
  attr_accessible :name, :img, :project_id
  
  has_attached_file :img,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => { :medium => "900x900>", :full => "1920x1920>", :thumb => "200x200>" }
  
  belongs_to :project
  
  def full_image
    img.url(:full)
  end
  
  def medium_image
    img.url(:medium)
  end
  
  def thumb_image
    img.url(:thumb)
  end
  
end
