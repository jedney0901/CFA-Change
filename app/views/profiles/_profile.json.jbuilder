json.extract! profile, :id, :user_id, :profile_image, :user_name, :about_me, :created_at, :updated_at
json.url profile_url(profile, format: :json)
