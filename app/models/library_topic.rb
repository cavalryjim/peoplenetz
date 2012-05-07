class LibraryTopic < ActiveRecord::Base
  belongs_to :library
  
  attr_accessible :content, :library_id, :title
  
  def to_str
    self.title
  end
end
