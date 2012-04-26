class Case < ActiveRecord::Base
  attr_accessible :email, :industry, :country, :org_size
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email,     :format  => { :with => email_regex }, :if => :should_validate_email
  validates :industry,  :presence => true
  validates :country,   :presence => true
  validates :org_size,  :presence => true
  
  def should_validate_email
    !self.email.blank?
  end
  
end
