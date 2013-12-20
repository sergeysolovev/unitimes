json.array!(@groups) do |group|
  json.extract! group, :name, :education_program_id
  json.url group_url(group, format: :json)
end
