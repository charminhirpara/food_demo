class CreateDemos < ActiveRecord::Migration[7.0]
  def change
    create_table :demos do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth_date
      t.string :gender
      t.string :address
      t.string :landmark
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :integer

      t.timestamps
    end
  end
end
