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

require 'rails_helper'

RSpec.describe Detail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
