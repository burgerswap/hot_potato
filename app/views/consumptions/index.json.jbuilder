json.array!(@consumptions) do |consumption|
  json.extract! consumption, :id, :leftover_id, :quantity, :user_id
  json.url consumption_url(consumption, format: :json)
end
