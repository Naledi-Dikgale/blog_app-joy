class CreateComments < ActiveRecord::Migration[6.1]
    def change
      create_table :comments do |t|
        t.references :author, null: false, foreign_key: { to_table: :users }
        t.references :post, null: false, foreign_key: true
        t.string :title
        t.text :text
        t.timestamps
      end
  
      add_index :comments, [:author_id, :post_id]
    end
  end
  