module Pdf
    require "prawn"
    def export(data)
        pdf = Prawn::Document.new
        data.each { |field, field_value| pdf.text "#{field} : #{field_value}\n"}
        pdf.render_file "#{data.values.first}.pdf"

    end
    def self.provide_info_of_module 
        "PDF"
    end
end

