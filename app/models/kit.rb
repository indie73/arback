class Kit < ApplicationRecord
  belongs_to :instruction
  belongs_to :detail
end

# == Schema Information
#
# Table name: kits
#
#  id             :integer          not null, primary key
#  instruction_id :integer          not null
#  detail_id      :integer          not null
#  quantity       :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_kits_on_detail_id       (detail_id)
#  index_kits_on_instruction_id  (instruction_id)
#
