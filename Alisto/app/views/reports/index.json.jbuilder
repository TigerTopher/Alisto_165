json.array!(@reports) do |report|
  json.extract! report, :id, :reporter_id, :title, :coordinate_x, :coordinate_y, :short_desc, :classification_id, :date_issued, :full_report
  json.url report_url(report, format: :json)
end
