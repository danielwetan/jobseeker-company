class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :user_id
      t.integer :category_id
      t.integer :manufacturer_id
      t.string :status
      t.string :order_serial
      t.datetime :purchase_date
      t.integer :purchase_cost
      t.string :notes

      t.timestamps
    end
  end
end
