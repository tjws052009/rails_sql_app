class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :user, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
