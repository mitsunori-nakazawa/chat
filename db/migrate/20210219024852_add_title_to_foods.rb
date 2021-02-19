class AddTitleToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :title, :string
  end
end
