class CreateShopping < ActiveRecord::Migration[5.0]
  def change
    create_table :shoppings do |t|
      t.string :item
    end
  end
end
