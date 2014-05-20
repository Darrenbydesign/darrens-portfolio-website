class CreateImagePosts < ActiveRecord::Migration
  def change
    create_table :image_posts do |t|

      t.timestamps
    end
  end
end
