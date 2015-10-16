require 'rspec'
require_relative '../export.rb'

describe ResumeGenerator do
    describe '#load_format' do
        it "dynamically adds desired plugin" do
            tester = ResumeGenerator.new ({'name' => 'Abu'})
            tester.load_format('pdf')
            expect( ResumeGenerator.method_defined?(:export)).to be true
        end
    end
    describe '#provide_plugin_names' do
        it "returns a list of plugins" do
            tester = ResumeGenerator.new ({'name' => 'Abu'})
            expect tester.provide_plugin_names.class.should eq Array
        end
    end
end
