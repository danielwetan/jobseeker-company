class CreateManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturers do |t|
      t.string :name, null: false, limit: 150
      t.string :url, null: false, limit: 255
      t.string :support_url, null: false, limit: 255
      t.string :status, null: false, limit: 15
      t.string :phone, null: false, limit: 20
      t.string :email, null: false, limit: 128

      t.timestamps
    end
  end
end
