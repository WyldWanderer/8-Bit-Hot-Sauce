class AddBestOnColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :sauces, :best_on, :string
  end
end
