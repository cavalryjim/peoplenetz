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

require 'spec_helper'

describe Contact do
  pending "add some examples to (or delete) #{__FILE__}"
end
