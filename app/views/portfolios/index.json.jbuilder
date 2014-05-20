json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, 
  json.url portfolio_url(portfolio, format: :json)
end