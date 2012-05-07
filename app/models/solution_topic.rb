# == Schema Information
#
# Table name: solution_topics
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  content     :text
#  position    :integer(4)
#  solution_id :integer(4)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class SolutionTopic < ActiveRecord::Base
  belongs_to :solution
  
  attr_accessible :content, :position, :solution_id, :title
end
