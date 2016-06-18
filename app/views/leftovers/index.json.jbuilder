json.array!(@leftovers) do |leftover|
  json.extract! leftover, :id, :title, :address, :location, :pincode, :quantity, :food_type, :available_from, :available_to, :status
  json.url leftover_url(leftover, format: :json)
end
