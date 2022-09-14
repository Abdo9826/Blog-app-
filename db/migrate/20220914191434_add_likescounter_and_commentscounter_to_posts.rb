class AddLikescounterAndCommentscounterToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :likescounter, :integer
    add_column :posts, :commentscounter, :integer
  end
end
