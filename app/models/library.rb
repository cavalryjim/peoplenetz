# == Schema Information
#
# Table name: libraries
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Library < ActiveRecord::Base
  has_many :library_topics, :dependent => :destroy, :order => 'position'
  
  attr_accessible :description, :name
  
  validates :name,  :presence       => true,
                    :uniqueness     => { :case_sensitive => false }

  def to_s
    self.name
  end
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
