class Step < ApplicationRecord
  belongs_to :instruction
end

# == Schema Information
#
# Table name: steps
#
#  id             :integer          not null, primary key
#  description    :string           not null
#  instruction_id :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_steps_on_instruction_id  (instruction_id)
#
