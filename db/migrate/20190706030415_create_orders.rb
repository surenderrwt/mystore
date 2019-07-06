class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, foreign_key: true
      t.references :ship, foreign_key: true
      t.decimal :total
      t.decimal :payment
      t.decimal :order_status
      t.datetime :delivery_date

      t.timestamps
    end
  end
end
