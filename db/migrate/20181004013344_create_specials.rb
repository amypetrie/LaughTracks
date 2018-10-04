class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t| #create_table from Active Record
      t.text :title
      t.integer :run_time

      t.timestamps null: false
    end
  end
end
