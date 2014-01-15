json.array!(@recognitions) do |recognition|
  json.extract! recognition, :id
  json.url recognition_url(recognition, format: :json)
end
