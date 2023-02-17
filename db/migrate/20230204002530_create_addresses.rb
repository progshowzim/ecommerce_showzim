class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :name, null: false
      t.string :street, null: false
      t.string :neighborhood, null: false
      t.string :number, null: false
      t.string :address_detail
      t.string :zipcode, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
