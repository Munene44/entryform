class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :firstname
      t.string :secondname
      t.string :sirname
      t.string :alias
      t.date :dateofbirth
      t.text :address
      t.integer :height
      t.string :image

      t.timestamps
    end
  end
end
