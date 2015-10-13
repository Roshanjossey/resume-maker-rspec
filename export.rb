require 'csv'

class Export
    def initialize()
        @data = ['Theeta Rappai', 'Proffesional eating machine', 34]
    end
    def export 
        CSV.open('resume.csv', 'w') do |csv|
            csv << @data
        end
    end
end
