class UpdateQuotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :quotes, :address
    add_column :quotes, :text, :string
  end
end
