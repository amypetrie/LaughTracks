class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t| #create_table from Active Record
      t.text :name #attributes and what form we want them to be in
      t.integer :age
      t.text :city

      t.timestamps null: false
    end
  end
end
