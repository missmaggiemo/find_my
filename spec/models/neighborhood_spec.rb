# == Schema Information
#
# Table name: neighborhoods
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  city         :string(255)
#  state_code   :string(255)
#  country_code :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Neighborhood do
  pending "add some examples to (or delete) #{__FILE__}"
end
