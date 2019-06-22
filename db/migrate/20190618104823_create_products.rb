class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title, null: false, limit: 100
      t.text :description
      t.string :img_url
      t.decimal :price, precision: 5, scale: 2, default: 0, null: false
      t.integer :qty, default: 1, null: false
      t.references :category, foreign_key: true, null: false
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
