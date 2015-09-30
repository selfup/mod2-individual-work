class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.string :password_digest
      t.boolean :admin, null: false, default: false

      t.timestamps null: false
    end
  end
end
