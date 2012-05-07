# == Schema Information
#
# Table name: cases
#
#  id         :integer(4)      not null, primary key
#  industry   :string(255)
#  org_size   :string(255)
#  country    :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe Case do
  pending "add some examples to (or delete) #{__FILE__}"
end
