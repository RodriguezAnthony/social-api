class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :email
      t.string :Password_digest

      t.timestamps
    end
  end
end
