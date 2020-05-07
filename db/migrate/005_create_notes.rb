class CreateNotes < ActiveRecord::Migration[6.0]
    def change
        create_table :notes do |t|
            t.integer :user_id
            t.integer :business_id
            t.string :content
            t.string :title
            t.string :category
            t.integer :comment_id

            t.timestamps null: false
        end
    end
end 