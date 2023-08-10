class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode

      t.timestamps
    end
  end
end
