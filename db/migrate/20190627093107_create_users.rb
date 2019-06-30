class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :password_digest
      t.string :email
      t.text :add1
      t.decimal :phone
      t.boolean :active

      t.timestamps
    end
  end
end
