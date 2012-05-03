class Industry < ActiveRecord::Base
  attr_accessible :description, :name, :pnetz_response
  
  validates :name,  :presence       => true,
                    :uniqueness     => { :case_sensitive => false }
                    
  def to_s
    self.name
  end
end
