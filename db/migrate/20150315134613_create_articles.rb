class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.date :published_on
      t.text :content

      t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false

      t.timestamps null: false
    end
  end
end
