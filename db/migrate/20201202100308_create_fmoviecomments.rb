class CreateFmoviecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :fmoviecomments do |t|
      t.string :title
      t.text :description
      t.integer :star
      t.belongs_to :user, foreign_key: true
      t.belongs_to :fmovie,foreign_key: true
      t.timestamps
      t.timestamps
    end
  end
end
