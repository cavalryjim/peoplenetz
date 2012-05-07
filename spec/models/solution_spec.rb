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

require 'spec_helper'

describe Solution do
  pending "add some examples to (or delete) #{__FILE__}"
end
