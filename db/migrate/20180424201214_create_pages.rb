class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :section_id
      t.text :body
      t.integer :order

      t.timestamps
    end
  end
end
