json.extract! image, :id, :created_at, :updated_at
json.url url_for(image.src) if image.src.attached?
