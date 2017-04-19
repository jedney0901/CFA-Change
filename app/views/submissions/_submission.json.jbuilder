json.extract! submission, :id, :debate_id, :sub_type, :content, :user_id, :created_at, :updated_at
json.url submission_url(submission, format: :json)
