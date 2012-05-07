# == Schema Information
#
# Table name: contacts
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  email      :string(255)
#  subject    :string(255)
#  message    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  country    :string(255)
#

class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject, :country
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true
  validates :email, :presence       => true,
                    :format         => { :with => email_regex }
                    
end
