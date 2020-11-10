class DropUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :users do |t|
      t.string "name"
      t.string "surname"
      t.string "phone"
      t.string "suburb"
      t.string "email"
      t.string "password"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end
end
