class RenameLikescounterToLikesCounter < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :likescounter, :likes_counter
  end
end
