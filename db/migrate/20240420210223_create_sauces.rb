class CreateSauces < ActiveRecord::Migration[6.1]
  def change
    create_table :sauces do |t|
      t.string :title
      t.text :description
      t.integer :heat_level

      t.timestamps
    end
  end
end
