json.array!(@inflation_rates) do |inflation_rate|
  json.extract! inflation_rate, :id, :month, :year, :percent
  json.url inflation_rate_url(inflation_rate, format: :json)
end
