class AddIndustryToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :industry, :string
  end
end
