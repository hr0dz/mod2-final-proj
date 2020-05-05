class CreateBusinesses < ActiveRecord::Migration[6.0]
    def change
      create_table :businesses do |t|
        t.string :name
        t.string :address
        t.integer :neighborhood_id
  
        t.timestamps null: false
      end
    end
  end