class AddServicesAndOfferingsToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :services, :string
    add_column :portfolios, :offerings, :string
  end
end
