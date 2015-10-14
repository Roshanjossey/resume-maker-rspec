require_relative 'export'
require_relative 'user'
require 'pry'

user_details = []
puts "Enter user details, done to stop"
while true do
    detail = gets.chomp
    if detail == "done"
        break
    end
    user_details << detail
end
puts user_details
user = User.new user_details
resume_details = user.details

puts 'Enter format to be exported'
format = gets.chomp
resume = Export.new resume_details
resume.loader(format)
resume.export
