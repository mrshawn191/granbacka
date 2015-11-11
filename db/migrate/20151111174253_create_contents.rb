class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :message

      t.timestamps null: false
    end
  end
end
