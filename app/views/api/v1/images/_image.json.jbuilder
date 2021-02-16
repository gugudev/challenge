json.extract! image, :id, :created_at, :updated_at

if image.src.attached?
  json.extract! image.src, :filename, :byte_size

  json.url rails_blob_url(image.src, only_path: true)
end
