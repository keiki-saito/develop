class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text :test_url
      t.timestamps
    end
  end
end
