class User

    attr_accessor :details

    def user_data_fields
        ['Name', 'Age', 'Profession']
    end
    def initialize()
        @details = {}
    end
end
