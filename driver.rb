require_relative 'export'
require_relative 'user'
require 'pry'

def create_user
    user = User.new
    user.user_data_fields.each do |field|
        puts "Enter #{field}:"
        field_value = gets.chomp
        user.details[field] = field_value
    end
    user
end

def generate_resume user
    generator = ResumeGenerator.new(user.details)
    puts "Enter format to which resume should be exported for #{user.details.values.first} ?\n"
    puts generator.provide_plugin_names
    format = gets.chomp
    generator.load_format(format)
    generator.export(user.details)
end

puts "Enter no.of resume to be processed"
users = []
no_of_users = gets.chomp.to_i
no_of_users.times { users << create_user }
users.each { |user| generate_resume user}

