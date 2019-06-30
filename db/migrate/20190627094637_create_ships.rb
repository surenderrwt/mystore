class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.string :fname
      t.string :lname
      t.text :add1
      t.text :add2
      t.decimal :phone
      t.belongs_to :country, foreign_key: true
      t.belongs_to :state, foreign_key: true

      t.timestamps
    end
  end
end
