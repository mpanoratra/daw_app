json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :pay_rate, :hire_date, :end_date
  json.url employee_url(employee, format: :json)
end
