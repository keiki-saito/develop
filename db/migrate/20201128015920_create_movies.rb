class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :movie_url
      t.timestamps
    end
  end
end
