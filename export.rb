require 'csv'

class Export
    def initialize(data)
        @data = data
    end
    def loader(format)
        require_relative 'plugins/' + format
        self.class.send(:include, Object.const_get(format.capitalize))
    end
end
