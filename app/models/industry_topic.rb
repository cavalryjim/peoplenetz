# == Schema Information
#
# Table name: industry_topics
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  content     :text
#  position    :integer(4)
#  industry_id :integer(4)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class IndustryTopic < ActiveRecord::Base
  belongs_to :industry
  
  attr_accessible :content, :industry_id, :position, :title
end
