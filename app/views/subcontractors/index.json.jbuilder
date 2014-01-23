json.array!(@subcontractors) do |subcontractor|
  json.extract! subcontractor, :id, :name, :owner_or_ceo, :checks_payable_to
  json.url subcontractor_url(subcontractor, format: :json)
end
