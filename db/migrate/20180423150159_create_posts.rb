class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :category, foreign_key: true
      t.boolean :private

      t.timestamps
    end
  end
end
