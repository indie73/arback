class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :description, null: false
      t.belongs_to :instruction, foreign_key: { on_delete: :cascade }, null: false
      t.timestamps
    end
  end
end
