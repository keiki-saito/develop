class ChangeDataImageUrlToContent < ActiveRecord::Migration[5.2]
  def change
    change_column :contents, :image_url,:text
  end
end
