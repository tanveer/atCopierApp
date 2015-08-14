require 'CSV'

CSV.foreach('36.csv') do |row|
  code = row[0]
  desc = row[1]
  Code.create(code: code, description: desc, model_id: 1)
end
