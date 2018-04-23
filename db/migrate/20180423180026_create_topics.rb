class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.references :category, foreign_key: true

      t.timestamps
    end
    remove_column :posts, :category_id
    add_reference :posts, :topic, index: true
  end
end
