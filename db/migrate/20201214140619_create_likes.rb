class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :jmovie,foreign_key: true
      t.belongs_to :janime, foreign_key: true
      t.belongs_to :original,foreign_key: true
      t.belongs_to :fmovie, foreign_key: true
      t.timestamps
    end
  end
end
