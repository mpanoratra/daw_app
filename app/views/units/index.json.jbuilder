json.array!(@units) do |unit|
  json.extract! unit, :id, :project_id, :name_or_address
  json.url unit_url(unit, format: :json)
end
