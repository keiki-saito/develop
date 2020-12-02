class CreateJanimes < ActiveRecord::Migration[5.2]
  def change
    create_table :janimes do |t|
      t.text :anime_url
      t.timestamps
    end
  end
end
