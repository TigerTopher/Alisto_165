json.array!(@anon_reports) do |anon_report|
  json.extract! anon_report, :id, :title, :coordinate_x, :coordinate_y, :short_desc, :classification, :date_issued, :full_report
  json.url anon_report_url(anon_report, format: :json)
end
