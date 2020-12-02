class CreateJmoviecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :jmoviecomments do |t|
      t.string :title
      t.text :description
      t.integer :star
      t.belongs_to :user, foreign_key: true
      t.belongs_to :jmovie,foreign_key: true
      t.timestamps
      t.timestamps
      t.timestamps
    end
  end
end
