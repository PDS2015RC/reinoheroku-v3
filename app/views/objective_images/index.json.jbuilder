json.array!(@objective_images) do |objective_image|
  json.extract! objective_image, :id, :lesson, :statement, :aimg, :bimg, :cimg
  json.url objective_image_url(objective_image, format: :json)
end
