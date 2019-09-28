class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :name, null: false
      t.string :short_name, null: false
      t.timestamps
    end
  end
end
