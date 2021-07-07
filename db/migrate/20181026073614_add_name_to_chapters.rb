class AddNameToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :name_chapter, :string
  end
end
