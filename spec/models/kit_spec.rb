require 'rails_helper'

RSpec.describe Kit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: kits
#
#  id              :integer          not null, primary key
#  instructions_id :integer          not null
#  details_id      :integer          not null
#  quantity        :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_kits_on_details_id       (details_id)
#  index_kits_on_instructions_id  (instructions_id)
#
