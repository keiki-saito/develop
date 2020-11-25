class RenameTitileColumnToUsercomments < ActiveRecord::Migration[5.2]
  def change
    rename_column :usercomments,:titile,:title
  end
end
