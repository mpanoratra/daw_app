json.array!(@projects) do |project|
  json.extract! project, :id, :name, :proj_num, :contract_num, :location, :start_date, :end_date
  json.url project_url(project, format: :json)
end
