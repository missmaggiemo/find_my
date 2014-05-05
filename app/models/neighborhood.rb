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

class Neighborhood < ActiveRecord::Base
end
