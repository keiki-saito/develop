class CreateOriginals < ActiveRecord::Migration[5.2]
  def change
    create_table :originals do |t|
      t.text :original_url
      t.timestamps
    end
  end
end
