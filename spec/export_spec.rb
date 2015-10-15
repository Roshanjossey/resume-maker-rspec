require 'rspec'
require_relative '../export.rb'

describe Export do
    describe '#load' do
        it "dynamically adds desired plugin" do
            # tester = Export.new
            # tester.loader('pdf')
            expect( Export.method_defined?(:export)).to be true
        end
    end
end
