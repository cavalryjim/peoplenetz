class Library < ActiveRecord::Base
  has_many :library_topics
  
  attr_accessible :description, :name
  
  validates :name,  :presence       => true,
                    :uniqueness     => { :case_sensitive => false }

  def to_s
    self.name
  end
end
