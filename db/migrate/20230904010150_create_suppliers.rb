class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name, null: false, limit: 150
      t.text :address, null: false
      t.string :city, null: false, limit: 255
      t.string :zip, null: false, limit: 10
      t.string :status, null: false, limit: 15
      t.string :contact_name, null: false, limit: 150
      t.string :phone, null: false, limit: 20
      t.string :email, null: false, limit: 128
      t.string :url, null: false, limit: 255
      t.string :notes, null: false, limit: 255

      t.timestamps
    end
  end
end

