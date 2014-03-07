json.array!(@employees) do |emp|
  json.extract! emp, :id, :name
end
