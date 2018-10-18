class CreateRelaGenreMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :rela_genre_mangas do |t|

      t.timestamps
    end
  end
end
