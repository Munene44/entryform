class AddFieldToTablename < ActiveRecord::Migration[6.0]
  def change
    add_column :tablenames, :image, :string
  end
end
