class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :body
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
