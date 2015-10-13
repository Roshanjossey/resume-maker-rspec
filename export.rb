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


class Export_csv
    def initialize()
        @data = ['Theeta Rappai', 'Proffesional eating machine', 34]
    end
    def export 
        CSV.open('resume.csv', 'w') do |csv|
            csv << @data
        end
    end
end


class Export_html
    def initialize()
        @data = ['Theeta Rappai', 'Proffesional eating machine', 34]
    end
    def export 
        file = File.open('resume.html', 'w')
        @data.each do | line |
            file.write(line)
            file.write('<br>')
            puts line
        end
    end
end
