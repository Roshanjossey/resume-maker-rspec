module Csv
    require 'csv'
    def export(data)
        CSV.open("#{data.values.first}.csv", 'w') do |csv|
            csv << data.keys
            csv << data.values
        end
    end
end

