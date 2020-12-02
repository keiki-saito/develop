class CreateJmovies < ActiveRecord::Migration[5.2]
  def change
    create_table :jmovies do |t|
      t.text :jmovie_url
      t.timestamps
    end
  end
end
