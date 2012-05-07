# == Schema Information
#
# Table name: industries
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  description    :text
#  pnetz_response :text
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Industry < ActiveRecord::Base
  attr_accessible :description, :name, :pnetz_response
  
  validates :name,  :presence       => true,
                    :uniqueness     => { :case_sensitive => false }
                    
  def to_s
    self.name
  end
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
