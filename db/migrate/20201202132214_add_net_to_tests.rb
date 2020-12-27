class AddNetToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :Net, :string
  end
end
