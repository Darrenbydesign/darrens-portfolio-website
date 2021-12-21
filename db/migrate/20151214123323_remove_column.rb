class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :portfolios, :type, :string
  end
end
