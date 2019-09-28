class Instruction < ApplicationRecord
  has_many :steps
  has_many :kits
end

# == Schema Information
#
# Table name: instructions
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
