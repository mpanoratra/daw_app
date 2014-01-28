json.array!(@labors) do |labor|
  json.extract! labor, :id, :employee_id, :hours, :date_of_labor, :task_id
  json.url labor_url(labor, format: :json)
end
