class ResumeGenerator
    def initialize(data)
        @data = data
    end
    def load_format(format)
        require_relative 'plugins/' + format
        self.class.send(:include, Object.const_get(format.capitalize))
    end
    def provide_plugin_names
        plugins = Dir.entries('plugins/').select { |plugin| !File.directory? plugin}
        plugins.collect { |plugin| plugin.split('.').first}
        plugins.each { |plugin| require_relative 'plugins/' + plugin }
        plugins.collect { |plugin| Object.const_get(plugin.split('.').first.capitalize).provide_info_of_module}
    end
end
