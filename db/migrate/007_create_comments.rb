class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.integer :user_id
      t.integer :note_id
      
      t.timestamps null: false
    end
  end
end
