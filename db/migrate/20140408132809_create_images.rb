class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :filepath

      t.timestamps
    end
  end
end
