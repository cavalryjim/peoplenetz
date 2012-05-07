# == Schema Information
#
# Table name: industries
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  description    :text
#  pnetz_response :text
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

require 'spec_helper'

describe Industry do
  pending "add some examples to (or delete) #{__FILE__}"
end
