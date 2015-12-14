class ChangeColumnName < ActiveRecord::Migration
  def change
    change_column :portfolios, :type, :medium
  end
end
