class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.float :price, scale: 2

      t.timestamps
    end
  end
end
