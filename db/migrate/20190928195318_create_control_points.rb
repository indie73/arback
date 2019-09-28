class CreateControlPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :control_points do |t|
      t.string :username, null: false
      t.belongs_to :instructions, foreign_key: { on_delete: :cascade }, null: false
      t.timestamps
    end
  end
end
