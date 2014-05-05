# == Schema Information
#
# Table name: searches
#
#  id          :integer          not null, primary key
#  location    :string(255)      not null
#  search_term :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Search do
  pending "add some examples to (or delete) #{__FILE__}"
end
