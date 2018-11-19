class CreateMangaks < ActiveRecord::Migration[5.2]
  def change
    create_table :mangaks do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.references :author, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
