class Solution < ActiveRecord::Base
  attr_accessible :description, :name, :pnetz_solution

  validates :name,  :presence       => true,
                    :uniqueness     => { :case_sensitive => false }
                    
  def to_s
    self.name
  end
end
