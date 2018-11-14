class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :serial_number
      t.string :name
      t.string :device_type
      t.belongs_to :user, foreign_key: {on_delete: :cascade}
      t.text :comment

      t.timestamps
    end
  end
end
