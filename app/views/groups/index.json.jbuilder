json.array!(@groups) do |group|
  json.extract! group, :name, :educationProgram_id
  #json.url group_url(group, format: :json)
end
