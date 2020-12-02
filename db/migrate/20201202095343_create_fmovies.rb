class CreateFmovies < ActiveRecord::Migration[5.2]
  def change
    create_table :fmovies do |t|
      t.text :fmovie_url
      t.timestamps
    end
  end
end
