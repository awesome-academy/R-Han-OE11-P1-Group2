class AddImpressionsCountToMangaks < ActiveRecord::Migration[5.2]
  def change
<<<<<<< HEAD
<<<<<<< HEAD
    add_column :mangaks, :impressions_count, :int
=======
    add_column :mangaks, :impressions_count, :int, default: 0
>>>>>>> impressionist
=======
    add_column :mangaks, :impressions_count, :int
>>>>>>> remote_authauthentication
  end
end
