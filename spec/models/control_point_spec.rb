require 'rails_helper'

RSpec.describe ControlPoint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: control_points
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  instructions_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_control_points_on_instructions_id  (instructions_id)
#
