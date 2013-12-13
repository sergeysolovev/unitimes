json.array!(@education_forms) do |education_form|
  json.extract! education_form, :name
  json.url education_form_url(education_form, format: :json)
end
