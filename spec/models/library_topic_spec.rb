# == Schema Information
#
# Table name: library_topics
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  content    :text
#  library_id :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  position   :integer(4)
#

require 'spec_helper'

describe LibraryTopic do
  pending "add some examples to (or delete) #{__FILE__}"
end
