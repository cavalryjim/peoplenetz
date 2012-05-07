# == Schema Information
#
# Table name: library_topics
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  content    :text
#  library_id :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  position   :integer(4)
#

class LibraryTopic < ActiveRecord::Base
  belongs_to :library
  
  attr_accessible :content, :library_id, :title, :position
  
  def to_str
    self.title
  end
end
