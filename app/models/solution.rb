# == Schema Information
#
# Table name: solutions
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  description    :text
#  pnetz_solution :text
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Solution < ActiveRecord::Base
  attr_accessible :description, :name, :pnetz_solution

  validates :name,  :presence       => true,
                    :uniqueness     => { :case_sensitive => false }
                    
  def to_s
    self.name
  end
  
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
