# == Schema Information
#
# Table name: businesses
#
#  id                   :integer          not null, primary key
#  name                 :string(255)      not null
#  created_at           :datetime
#  updated_at           :datetime
#  is_claimed           :boolean
#  rating               :float
#  mobile_url           :string(255)
#  rating_img_url       :string(255)
#  rating_img_url_large :string(255)
#  review_count         :integer
#  snippet_image_url    :string(255)
#  rating_img_url_small :string(255)
#  url                  :string(255)
#  menu_date_updated    :integer
#  phone                :integer
#  snippet_text         :text
#  image_url            :string(255)
#  display_phone        :string(255)
#  menu_provider        :string(255)
#  id_string            :string(255)
#  is_closed            :boolean
#

require 'spec_helper'

describe Business do
  pending "add some examples to (or delete) #{__FILE__}"
end
