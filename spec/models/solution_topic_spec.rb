# == Schema Information
#
# Table name: solution_topics
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  content     :text
#  position    :integer(4)
#  solution_id :integer(4)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe SolutionTopic do
  pending "add some examples to (or delete) #{__FILE__}"
end
