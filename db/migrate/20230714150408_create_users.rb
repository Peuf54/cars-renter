class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :is_admin, default: false
      t.boolean :owner_mode, default: false

      t.timestamps
    end
  end
end
