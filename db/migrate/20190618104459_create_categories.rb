class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title, null: false, limit: 100
      t.text :description
      t.string :img_url
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
