class Step < ApplicationRecord
end

# == Schema Information
#
# Table name: steps
#
#  id              :integer          not null, primary key
#  description     :string           not null
#  instructions_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_steps_on_instructions_id  (instructions_id)
#
