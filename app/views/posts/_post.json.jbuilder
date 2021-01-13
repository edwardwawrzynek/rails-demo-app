json.extract! post, :id, :description, :title, :date_posted, :created_at, :updated_at
json.url post_url(post, format: :json)
