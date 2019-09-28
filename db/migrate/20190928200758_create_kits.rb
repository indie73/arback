class CreateKits < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.belongs_to :instructions, foreign_key: { on_delete: :cascade }, null: false
      t.belongs_to :details, foreign_key: { on_delete: :cascade }, null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
