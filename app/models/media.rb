# == Schema Information
#
# Table name: media
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  times_per_hour :integer
#  device_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Media < ApplicationRecord
  belongs_to :device, class_name: 'Device'

  has_one_attached :file
end
