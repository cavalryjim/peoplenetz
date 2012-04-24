class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject, :country
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true
  validates :email, :presence       => true,
                    :format         => { :with => email_regex }
                    
end
