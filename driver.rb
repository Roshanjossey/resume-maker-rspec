require_relative 'export'


puts 'Enter format to be converted'
format = gets
if format == "csv\n"
    file = Export_csv.new
elsif format == "html\n"
    file = Export_html.new
end
file.export
