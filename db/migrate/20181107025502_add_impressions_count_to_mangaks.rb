class AddImpressionsCountToMangaks < ActiveRecord::Migration[5.2]
  def change
    add_column :mangaks, :impressions_count, :int
  end
end
