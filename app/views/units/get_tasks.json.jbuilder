json.array!(@tasks) do |task|
  json.extract! task, :id, :unit_id, :trade, :budget
end
