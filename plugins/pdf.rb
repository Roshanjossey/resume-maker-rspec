require 'pry'
module Pdf
    require "prawn"
    def export
        pdf = Prawn::Document.new
        @data.each { |field| pdf.text "#{field}\n"}
        binding.pry
        pdf.render_file "#{@data.first}.pdf"

    end
end

