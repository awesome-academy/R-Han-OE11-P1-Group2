class CreateMangaks < ActiveRecord::Migration[5.2]
  def change
    create_table :mangaks do |t|

      t.timestamps
    end
  end
end
