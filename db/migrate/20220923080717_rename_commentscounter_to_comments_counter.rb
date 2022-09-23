class RenameCommentscounterToCommentsCounter < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :commentscounter, :comments_counter
  end
end
