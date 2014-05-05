# == Schema Information
#
# Table name: locations
#
#  id              :integer          not null, primary key
#  business_id     :string(255)
#  city            :string(255)
#  display_address :string(255)
#  neighborhoods   :string(255)
#  postal_code     :string(255)
#  country_code    :string(255)
#  address         :string(255)
#  state_code      :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe Location do
  pending "add some examples to (or delete) #{__FILE__}"
end
