class CreateOriginalcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :originalcomments do |t|
      t.string :title
      t.text :description
      t.integer :star
      t.belongs_to :user, foreign_key: true
      t.belongs_to :original,foreign_key: true
      t.timestamps
    end
  end
end
