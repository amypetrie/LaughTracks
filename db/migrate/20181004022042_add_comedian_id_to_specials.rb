class AddComedianIdToSpecials < ActiveRecord::Migration[5.2]
    def change
      add_column :specials, :comedian_id, :integer # 3 params - table, column name, data type
    end
end
