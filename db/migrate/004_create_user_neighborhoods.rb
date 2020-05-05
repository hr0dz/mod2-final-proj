class CreateUserNeighborhoods < ActiveRecord::Migration[6.0]
    def change
      create_table :user_neighborhoods do |t|
        t.integer :user_id
        t.integer :neighborhood_id
  
        t.timestamps null: false
      end
    end
  end