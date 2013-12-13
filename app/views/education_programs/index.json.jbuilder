json.array!(@education_programs) do |education_program|
  json.extract! education_program, :course, :educationLevel_id, :educationForm_id, :name
  json.url education_program_url(education_program, format: :json)
end