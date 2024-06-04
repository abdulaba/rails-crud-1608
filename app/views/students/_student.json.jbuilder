json.extract! student, :id, :name, :url, :country, :created_at, :updated_at
json.url student_url(student, format: :json)
