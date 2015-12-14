class AddTypeToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :type, :string
  end
end
