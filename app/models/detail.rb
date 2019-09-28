# == Schema Information
#
# Table name: details
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  short_name :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Detail < ApplicationRecord
end
