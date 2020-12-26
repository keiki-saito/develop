class CreateJtvs < ActiveRecord::Migration[5.2]
  def change
    create_table :jtvs do |t|
      t.text :jtv_url
      t.timestamps
    end
  end
end
