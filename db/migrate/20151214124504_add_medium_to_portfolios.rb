class AddMediumToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :medium, :string
  end
end
