json.extract! post, :id, :name, :email, :title, :position, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
