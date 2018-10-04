class ChangeNameColumnInSpecials < ActiveRecord::Migration[5.2]
  def change
    rename_column :specials, :name, :title
  end
end
