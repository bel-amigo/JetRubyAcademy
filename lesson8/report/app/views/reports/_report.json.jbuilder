json.extract! report, :id, :title, :description, :grade, :created_at, :updated_at
json.url report_url(report, format: :json)
