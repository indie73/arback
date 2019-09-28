class ControlPoint < ApplicationRecord
  belongs_to :instruction

  def to_json
    {
      id: id,
      username: username,
      time: created_at.to_i,
      instructionId: instruction.id
    }
  end
end

# == Schema Information
#
# Table name: control_points
#
#  id             :integer          not null, primary key
#  username       :string           not null
#  instruction_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_control_points_on_instruction_id  (instruction_id)
#
